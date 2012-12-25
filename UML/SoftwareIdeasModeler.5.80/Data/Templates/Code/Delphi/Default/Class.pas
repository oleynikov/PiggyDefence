<%==SIM:Set:private=private==%>
<%==SIM:Set:protected=protected==%>
<%==SIM:Set:package===%>
<%==SIM:Set:public=public==%>
unit <%==SIM:Element.Name==%>Unit;

interface
<%==SIM:CompactOn==%>
<%==SIM:ForEach:Element.DocumentationLines==%>//<%==SIM:DocumentationLine==%>
<%==SIM:EndFor==%>
<%==SIM:CompactOff==%>
<%==SIM:CompactOn==%>
<%==SIM:If:HasImports==%>
uses
    <%==SIM:ForEach:Imports==%><%==SIM:Import.Name==%><%==SIM:IfNot:IsLastItem==%>, <%==SIM:EndIf==%><%==SIM:EndFor==%>;
<%==SIM:EndIf==%>
<%==SIM:CompactOff==%>
type
    <%==SIM:Element.Name==%> = class<%==SIM:If:Element.IsAbstract==%> abstract<%==SIM:EndIf==%><%==SIM:If:Element.IsLeaf==%> sealed<%==SIM:EndIf==%> <%==SIM:If:Element.HasSuperClassOrInterface==%>(<%==SIM:Element.SuperClass.Name==%><%==SIM:If:Element.HasInterfaces==%><%==SIM:If:Element.HasSuperClass==%>,<%==SIM:EndIf==%> <%==SIM:ForEach:Element.Interfaces==%><%==SIM:Interface.Name==%><%==SIM:IfNot:IsLastItem==%>, <%==SIM:EndIf==%><%==SIM:EndFor==%><%==SIM:EndIf==%>)<%==SIM:EndIf==%>
<%==SIM:CompactOn==%>
private<%==SIM:ForEach:Element.Attributes==%>
    <%==SIM:IfNot:Attribute.IsStatic==%><%==SIM:If:Equals(Attribute.Visibility,private)==%>
    <%==SIM:ForEach:Attribute.DocumentationLines==%>// <%==SIM:DocumentationLine==%>
    <%==SIM:EndFor==%>
    <%==SIM:Attribute.Name==%> : <%==SIM:Attribute.Type==%>; <%==SIM:EndIf==%><%==SIM:EndIf==%>
    <%==SIM:EndFor==%>	

    <%==SIM:ForEach:Element.Operations==%><%==SIM:If:Equals(Operation.Visibility,private)==%>	
    <%==SIM:ForEach:Operation.DocumentationLines==%>//<%==SIM:DocumentationLine==%>
    <%==SIM:EndFor==%>
	
    <%==SIM:IfNot:Operation.HasReturnType==%><%==SIM:If:Operation.IsStatic==%>class <%==SIM:EndIf==%>procedure  <%==SIM:Operation.Name==%>(<%==SIM:ForEach:Operation.Parameters==%><%==SIM:Parameter.Name==%> : <%==SIM:Parameter.Type==%><%==SIM:IfNot:IsLastItem==%>; <%==SIM:EndIf==%><%==SIM:EndFor==%>);<%==SIM:If:Or(Operation.IsVirtual,Operation.IsAbstract)==%> virtual;<%==SIM:EndIf==%><%==SIM:If:Operation.IsAbstract==%> abstract;<%==SIM:EndIf==%><%==SIM:EndIf==%>
    <%==SIM:If:Operation.HasReturnType==%><%==SIM:If:Operation.IsStatic==%>class <%==SIM:EndIf==%>function <%==SIM:Operation.Name==%>(<%==SIM:ForEach:Operation.Parameters==%><%==SIM:Parameter.Name==%> : <%==SIM:Parameter.Type==%><%==SIM:IfNot:IsLastItem==%>; <%==SIM:EndIf==%><%==SIM:EndFor==%>) : <%==SIM:Operation.ReturnType==%>;<%==SIM:If:Or(Operation.IsVirtual,Operation.IsAbstract)==%> virtual;<%==SIM:EndIf==%><%==SIM:If:Operation.IsAbstract==%> abstract;<%==SIM:EndIf==%>
    <%==SIM:EndIf==%>	
<%==SIM:EndIf==%>
<%==SIM:EndFor==%>
<%==SIM:CompactOff==%>

<%==SIM:CompactOn==%>
protected<%==SIM:ForEach:Element.Attributes==%>
    <%==SIM:IfNot:Attribute.IsStatic==%><%==SIM:If:Equals(Attribute.Visibility,protected)==%>
    <%==SIM:ForEach:Attribute.DocumentationLines==%>// <%==SIM:DocumentationLine==%> 
    <%==SIM:EndFor==%><%==SIM:Attribute.Name==%> : <%==SIM:Attribute.Type==%>; <%==SIM:EndIf==%><%==SIM:EndIf==%><%==SIM:EndFor==%>
    <%==SIM:ForEach:Element.Operations==%><%==SIM:If:Equals(Operation.Visibility,protected)==%>
    <%==SIM:ForEach:Operation.DocumentationLines==%>//<%==SIM:DocumentationLine==%>
    <%==SIM:EndFor==%><%==SIM:IfNot:Operation.HasReturnType==%><%==SIM:If:Operation.IsStatic==%>class <%==SIM:EndIf==%>procedure  <%==SIM:Operation.Name==%>(<%==SIM:ForEach:Operation.Parameters==%><%==SIM:Parameter.Name==%> : <%==SIM:Parameter.Type==%><%==SIM:IfNot:IsLastItem==%>; <%==SIM:EndIf==%><%==SIM:EndFor==%>);<%==SIM:If:Or(Operation.IsVirtual,Operation.IsAbstract)==%> virtual;<%==SIM:EndIf==%><%==SIM:If:Operation.IsAbstract==%> abstract;<%==SIM:EndIf==%><%==SIM:EndIf==%>
    <%==SIM:If:Operation.HasReturnType==%><%==SIM:If:Operation.IsStatic==%>class <%==SIM:EndIf==%>function <%==SIM:Operation.Name==%>(<%==SIM:ForEach:Operation.Parameters==%><%==SIM:Parameter.Name==%> : <%==SIM:Parameter.Type==%><%==SIM:IfNot:IsLastItem==%>; <%==SIM:EndIf==%><%==SIM:EndFor==%>) : <%==SIM:Operation.ReturnType==%>;<%==SIM:If:Or(Operation.IsVirtual,Operation.IsAbstract)==%> virtual;<%==SIM:EndIf==%><%==SIM:If:Operation.IsAbstract==%> abstract;<%==SIM:EndIf==%><%==SIM:EndIf==%>
<%==SIM:EndIf==%>
<%==SIM:EndFor==%>
<%==SIM:CompactOff==%>

<%==SIM:CompactOn==%>
public<%==SIM:ForEach:Element.Attributes==%>
    <%==SIM:IfNot:Attribute.IsStatic==%><%==SIM:If:Equals(Attribute.Visibility,public)==%>
    <%==SIM:ForEach:Attribute.DocumentationLines==%>// <%==SIM:DocumentationLine==%> 
    <%==SIM:EndFor==%><%==SIM:Attribute.Name==%> : <%==SIM:Attribute.Type==%>; <%==SIM:EndIf==%><%==SIM:EndIf==%><%==SIM:EndFor==%>
    <%==SIM:ForEach:Element.Operations==%><%==SIM:If:Equals(Operation.Visibility,public)==%>
    <%==SIM:ForEach:Operation.DocumentationLines==%>//<%==SIM:DocumentationLine==%>
    <%==SIM:EndFor==%><%==SIM:IfNot:Operation.HasReturnType==%><%==SIM:If:Operation.IsStatic==%>class <%==SIM:EndIf==%>procedure  <%==SIM:Operation.Name==%>(<%==SIM:ForEach:Operation.Parameters==%><%==SIM:Parameter.Name==%> : <%==SIM:Parameter.Type==%><%==SIM:IfNot:IsLastItem==%>; <%==SIM:EndIf==%><%==SIM:EndFor==%>);<%==SIM:If:Or(Operation.IsVirtual,Operation.IsAbstract)==%> virtual;<%==SIM:EndIf==%><%==SIM:If:Operation.IsAbstract==%> abstract;<%==SIM:EndIf==%><%==SIM:EndIf==%>
    <%==SIM:If:Operation.HasReturnType==%><%==SIM:If:Operation.IsStatic==%>class <%==SIM:EndIf==%>function <%==SIM:Operation.Name==%>(<%==SIM:ForEach:Operation.Parameters==%><%==SIM:Parameter.Name==%> : <%==SIM:Parameter.Type==%><%==SIM:IfNot:IsLastItem==%>; <%==SIM:EndIf==%><%==SIM:EndFor==%>) : <%==SIM:Operation.ReturnType==%>;<%==SIM:If:Or(Operation.IsVirtual,Operation.IsAbstract)==%> virtual;<%==SIM:EndIf==%><%==SIM:If:Operation.IsAbstract==%> abstract;<%==SIM:EndIf==%><%==SIM:EndIf==%>
<%==SIM:EndIf==%>
<%==SIM:EndFor==%>
<%==SIM:CompactOff==%>
end;


implementation
<%==SIM:ForEach:Element.Operations==%>
	<%==SIM:IfNot:Operation.IsAbstract==%>
    <%==SIM:IfNot:Operation.HasReturnType==%><%==SIM:If:Operation.IsStatic==%>class <%==SIM:EndIf==%>procedure  <%==SIM:Element.Name==%>.<%==SIM:Operation.Name==%>(<%==SIM:ForEach:Operation.Parameters==%><%==SIM:Parameter.Name==%> : <%==SIM:Parameter.Type==%><%==SIM:IfNot:IsLastItem==%>; <%==SIM:EndIf==%><%==SIM:EndFor==%>)<%==SIM:EndIf==%><%==SIM:If:Operation.HasReturnType==%><%==SIM:If:Operation.IsStatic==%>class <%==SIM:EndIf==%>function <%==SIM:Element.Name==%>.<%==SIM:Operation.Name==%>(<%==SIM:ForEach:Operation.Parameters==%><%==SIM:Parameter.Name==%> : <%==SIM:Parameter.Type==%><%==SIM:IfNot:IsLastItem==%>; <%==SIM:EndIf==%><%==SIM:EndFor==%>) : <%==SIM:Operation.ReturnType==%><%==SIM:EndIf==%>;	
    begin
        <%==SIM:Operation.SourceCodeBody==%>
    end;
	<%==SIM:EndIf==%>
<%==SIM:EndFor==%>
end.