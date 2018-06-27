codeunit 50115 "UpdateTranslationsXFL"
{
    trigger OnRun();
    var
        NewXFLFile: Text;
        OldXFLFile: Text;
        NewXFLInStream: InStream;
        OldXFLInStream: InStream;
    begin
        if not UploadIntoStream('Untranslated XFL File', '', '', NewXFLFile, NewXFLInStream) then exit;
        if not UploadIntoStream('Translated XFL File', '', '', OldXFLFile, OldXFLInStream) then exit;
        UpdateTranslations(NewXFLInStream, OldXFLInStream);
    end;

    procedure UpdateTranslations(var NewXFLInStream: InStream; var OldXFLInStream: InStream) Result: Boolean;
    var
        Handled: Boolean;
    begin
        OnBeforeUpdateTranslations(NewXFLInStream, OldXFLInStream, Handled, Result);
        DoUpdateTranslations(NewXFLInStream, OldXFLInStream, Handled, Result);
        OnAfterUpdateTranslations(NewXFLInStream, OldXFLInStream, Handled, Result);
        EXIT(Result);
    end;

    local procedure DoUpdateTranslations(var xflInstreamNew: InStream; var xflInstreamOld: InStream; var Handled: Boolean; var Result: Boolean);
    var
        NewTempBlob: Record TempBlob temporary;
        xmlnsManagerNewDoc: XmlNamespaceManager;
        xmlnsManagerOldDoc: XmlNamespaceManager;
        xmlDocumentNew: XmlDocument;
        xmlDocumentOld: XmlDocument;
        xflOutstreamNew: OutStream;
        TransUnitNodeList: XmlNodeList;
        TransUnitNode: XmlNode;
        OldTransUnitNode: XmlNode;
        targetNode: XmlNode;
        OldtargetNode: XmlNode;
        NewFileNode: XmlNode;
        OldFileNode: XmlNode;
        targetElement: XmlElement;
        OldtargetElement: XmlElement;
        RootElementNewDoc: XmlElement;
        RootElementOldDoc: XmlElement;
        RootNodeNewDoc: XmlNode;
        TransUnitId: Text;
        TransUnitTranslate: Text;
        OldFileTargetLanguage: Text;
        TranslatedXFLFile: Text;
        xflInstreamTranslated: InStream;

    begin
        IF Handled THEN EXIT;
        XmlDocument.ReadFrom(xflInstreamNew, xmlDocumentNew);
        XmlDocument.ReadFrom(xflInstreamOld, xmlDocumentOld);
        xmlnsManagerNewDoc.NameTable(xmlDocumentNew.NameTable());
        xmlnsManagerNewDoc.AddNamespace('xd', 'urn:oasis:names:tc:xliff:document:1.2');
        xmlnsManagerOldDoc.NameTable(xmlDocumentOld.NameTable());
        xmlnsManagerOldDoc.AddNamespace('xd', 'urn:oasis:names:tc:xliff:document:1.2');
        xmlDocumentNew.GetRoot(RootElementNewDoc);
        xmlDocumentOld.GetRoot(RootElementOldDoc);
        if RootElementOldDoc.SelectSingleNode('//xd:file', xmlnsManagerOldDoc, OldFileNode) then begin
            OldFileTargetLanguage := GetNodeAttributeValue(OldFileNode, 'target-language');
            if RootElementNewDoc.SelectSingleNode('//xd:file', xmlnsManagerNewDoc, NewFileNode) then begin
                SetNodeAttribute(NewFileNode, 'target-language', OldFileTargetLanguage);
            end;
        end;
        if RootElementNewDoc.SelectNodes('//xd:trans-unit', xmlnsManagerNewDoc, TransUnitNodeList) then
            foreach TransUnitNode in TransUnitNodeList do begin
                TransUnitId := GetNodeAttributeValue(TransUnitNode, 'id');
                if RootElementOldDoc.SelectSingleNode('//xd:trans-unit[@id="' + TransUnitId + '"]', xmlnsManagerOldDoc, OldTransUnitNode) then begin
                    TransUnitTranslate := GetNodeAttributeValue(OldTransUnitNode, 'translate');
                    SetNodeAttribute(TransUnitNode, 'translate', TransUnitTranslate);
                    if OldTransUnitNode.SelectSingleNode('xd:target', xmlnsManagerOldDoc, OldtargetNode) then begin
                        if not TransUnitNode.SelectSingleNode('xd:target', xmlnsManagerNewDoc, targetNode) then begin
                            if TransUnitNode.SelectSingleNode('xd:source', xmlnsManagerNewDoc, targetNode) then begin
                                targetElement := targetNode.AsXmlElement();
                                targetElement.AddAfterSelf(OldtargetNode);
                            end;
                        end else begin
                            OldtargetElement := OldtargetNode.AsXmlElement();
                            targetElement := targetNode.AsXmlElement();
                            targetElement.SetAttribute('state', GetNodeAttributeValue(OldtargetNode, 'state'));
                            targetElement.AddFirst(OldtargetElement.InnerText());
                        end;
                    end;
                end;
            end;
        NewTempBlob.Blob.CreateOutStream(xflOutstreamNew);
        xmlDocumentNew.WriteTo(xflOutstreamNew);
        NewTempBlob.Blob.CreateInStream(xflInstreamTranslated);
        DownloadFromStream(xflInstreamTranslated, 'New Translated File', '', 'Translation.xlf', TranslatedXFLFile);
    end;

    local procedure SetNodeAttribute(var SourceNode: XmlNode; AttributeName: Text; AttributeValue: Text);
    var
        SourceElement: XmlElement;
    begin
        SourceElement := SourceNode.AsXmlElement();
        SourceElement.SetAttribute(AttributeName, AttributeValue);
    end;

    local procedure GetNodeAttributeValue(var SourceNode: XmlNode; AttributeName: Text) AttributeValue: Text;
    var
        SourceElement: XmlElement;
        SourceAttributes: XmlAttributeCollection;
        SourceAttribute: XmlAttribute;
    begin
        SourceElement := SourceNode.AsXmlElement();
        SourceAttributes := SourceElement.Attributes();
        AttributeValue := '';
        foreach SourceAttribute in SourceAttributes do
            if SourceAttribute.Name() = AttributeName then
                AttributeValue := SourceAttribute.Value();

    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeUpdateTranslations(var NewXFLInStream: InStream; var OldXFLInStream: InStream; var Handled: Boolean; var Result: Boolean);
    begin

    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterUpdateTranslations(var NewXFLInStream: InStream; var OldXFLInStream: InStream; var Handled: Boolean; var Result: Boolean);
    begin

    end;

}