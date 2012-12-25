<%==SIM:Set:private=private==%>
<%==SIM:Set:protected=protected==%>
<%==SIM:Set:package===%>
<%==SIM:Set:public=public==%>
unit <%==SIM:Element.Namespace==%>Unit;

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
    <%==SIM:Element.Name==%> = Interface(IInterface)

<%==SIM:CompactOn==%>
    <%==SIM:ForEach:Element.Operations==%>
    <%==SIM:ForEach:Operation.DocumentationLines==%>//<%==SIM:DocumentationLine==%>
    <%==SIM:EndFor==%><%==SIM:IfNot:Operation.HasReturnType==%><%==SIM:If:Operation.IsStatic==%>class <%==SIM:EndIf==%>procedure  <%==SIM:Operation.Name==%>(<%==SIM:ForEach:Operation.Parameters==%><%==SIM:Parameter.Name==%> : <%==SIM:Parameter.Type==%><%==SIM:IfNot:IsLastItem==%>; <%==SIM:EndIf==%><%==SIM:EndFor==%>);<%==SIM:If:Operation.IsVirtual==%> virtual;<%==SIM:EndIf==%><%==SIM:If:Operation.IsAbstract==%> abstract;<%==SIM:EndIf==%><%==SIM:EndIf==%>
    <%==SIM:If:Operation.HasReturnType==%><%==SIM:If:Operation.IsStatic==%>class <%==SIM:EndIf==%>function <%==SIM:Operation.Name==%>(<%==SIM:ForEach:Operation.Parameters==%><%==SIM:Parameter.Name==%> : <%==SIM:Parameter.Type==%><%==SIM:IfNot:IsLastItem==%>; <%==SIM:EndIf==%><%==SIM:EndFor==%>) : <%==SIM:Operation.ReturnType==%>;<%==SIM:If:Operation.IsVirtual==%> virtual;<%==SIM:EndIf==%><%==SIM:If:Operation.IsAbstract==%> abstract;<%==SIM:EndIf==%><%==SIM:EndIf==%>
<%==SIM:EndFor==%>
<%==SIM:CompactOff==%>
end;

end.