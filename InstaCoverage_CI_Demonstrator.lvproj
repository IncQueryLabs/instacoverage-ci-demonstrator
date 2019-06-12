<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="18008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Calculator.vi" Type="VI" URL="../Calculator.vi"/>
		<Item Name="ci-script.vi" Type="VI" URL="../ci-script.vi"/>
		<Item Name="Insert coverage as testcase.vi" Type="VI" URL="../Insert coverage as testcase.vi"/>
		<Item Name="Operation.ctl" Type="VI" URL="../Operation.ctl"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_XML.lvlib" Type="Library" URL="/&lt;vilib&gt;/xml/NI_XML.lvlib"/>
			</Item>
			<Item Name="DOMUserDefRef.dll" Type="Document" URL="DOMUserDefRef.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Generate Report File.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/InstaCoverage/InstaCoverage_API/Generate Report File.vi"/>
			<Item Name="Run Tests From Project.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/InstaCoverage/InstaCoverage_API/Run Tests From Project.vi"/>
			<Item Name="TestReportTypeEnum.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/InstaCoverage/Defines/TestReportTypeEnum.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
