<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProfileForm.aspx.cs" Inherits="ProfileForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="margin-left:20px">Profile</h1>
        <div id="General" style="margin-left:20px">
            <asp:Button ID="Button1" runat="server" Text="Log Out" OnClick="Button1_Click"/>
            <h2>
                Basic Info
            </h2>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="DSbasicinfo" DataKeyNames="Id">
                <EditItemTemplate>
                    <asp:Image ID="image" Style="float:left; padding-right:20px; width:200px" runat="server" ImageUrl='<%# Bind("image", "student/{0}")%>' />
                     <table>
                        <tr>
                            <td>
                                <b>Name</b>
                            </td>
                            <td>:
                                <asp:TextBox id="nameTb" runat="server" text='<%# Bind("name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Course</b>
                            </td>
                            <td>:
                                <asp:TextBox ID="courseTb" runat="server" Text='<%# Bind("course") %>' />
                            </td>
                        </tr>                            
                        <tr>
                            <td>
                                <b>Batch</b>
                            </td>
                            <td>:
                                <asp:TextBox ID="batchTb" runat="server" Text='<%# Bind("batch") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Place</b>
                            </td>
                            <td>:
                                <asp:TextBox ID="placeTb" runat="server" Text='<%# Bind("place") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Gender</b>
                            </td>
                            <td>:
                                 <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("gender") %>'>
									<asp:ListItem Text="Select" Value="">
									</asp:ListItem>

									<asp:ListItem Text="Male" Value="Male">
									</asp:ListItem>
									<asp:ListItem Text="Female" Value="Female">
									</asp:ListItem>
								</asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>DOB</b>
                            </td>
                            <td>:
                                <asp:TextBox ID="dobTb" runat="server" Text='<%# Bind("dob") %>'/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Father's Name</b>
                            </td>
                            <td>:
                                <asp:TextBox ID="fnameTb" runat="server" Text='<%# Bind("fname") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Mother's Name</b>
                            </td>
                            <td>:
                                <asp:TextBox ID="mnameTb" runat="server" Text='<%# Bind("mname") %>' />
                            </td>
                        </tr>
                       
                        <tr>
                            <td>&nbsp;&nbsp;<asp:LinkButton ID="UpdateButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 100px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
							runat="server" CausesValidation="True"
							CommandName="Update" Text="Update" />
						</td>
						<td>&nbsp;&nbsp;<asp:LinkButton ID="UpdateCancelButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 100px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
							runat="server"
							CausesValidation="False" CommandName="Cancel" Text="Cancel" />
						</td>
                        </tr>
                    </table>           
                    
                </EditItemTemplate>
                
                <ItemTemplate>
                    <asp:Image ID="image" Style="float:left; padding-right:20px; width:200px" runat="server" ImageUrl='<%# Bind("image", "student/{0}")%>' />

                    <table>
                        <tr>
                            <td>
                                <b>Name</b>
                            </td>
                            <td>:
                                <asp:Label id="nameLabel" runat="server" text='<%# Bind("name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Course</b>
                            </td>
                            <td>:
                                <asp:Label ID="courseLabel" runat="server" Text='<%# Bind("course") %>' />
                            </td>
                        </tr>                            
                        <tr>
                            <td>
                                <b>Batch</b>
                            </td>
                            <td>:
                                <asp:Label ID="batchLabel" runat="server" Text='<%# Bind("batch") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Place</b>
                            </td>
                            <td>:
                                <asp:Label ID="placeLabel" runat="server" Text='<%# Bind("place") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Gender</b>
                            </td>
                            <td>:
                                 <asp:Label ID="genderLabel" runat="server" Text='<%# Bind("gender") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>DOB</b>
                            </td>
                            <td>:
                                <asp:Label ID="dobLabel" runat="server" Text='<%# Bind("dob") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Father's Name</b>
                            </td>
                            <td>:
                                <asp:Label ID="fnameLabel" runat="server" Text='<%# Bind("fname") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Mother's Name</b>
                            </td>
                            <td>:
                                <asp:Label ID="mnameLabel" runat="server" Text='<%# Bind("mname") %>' />
                            </td>
                        </tr>
                       
                        <tr>
                            <td>
                                &nbsp;&nbsp;<asp:LinkButton ID="EditButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 50px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
							runat="server" CausesValidation="False"
							CommandName="Edit" Text="Edit" />
                            </td>
                            <td>

                            </td>
                        </tr>
                    </table>                
                </ItemTemplate>

            </asp:FormView>        
            
            <asp:SqlDataSource ID="DSbasicinfo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Id], [name], [course], [batch], [place], [gender], [dob], [fname], [mname], [image] FROM [Students] WHERE ([email]=@email)"
                UpdateCommand="UPDATE [Students] SET [name]=@name, [course]=@course, [batch]=@batch, [place]=@place, [gender]=@gender, [dob]=@dob, [fname]=@fname, [mname]=@mname WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:SessionParameter Name="email" SessionField="StudentUser" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
				    <asp:Parameter Name="name" Type="String" />
				    <asp:Parameter Name="course" Type="String" />
				    <asp:Parameter Name="batch" Type="String" />
				    <asp:Parameter Name="place" Type="String" />
				    <asp:Parameter Name="gender" Type="String" />
				    <asp:Parameter Name="dob" Type="String" />
				    <asp:Parameter Name="fname" Type="String" />
				    <asp:Parameter Name="mname" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
				    
                </UpdateParameters>
            </asp:SqlDataSource>   

            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:LinkButton ID="linkButton1" runat="server" CausesValidation="true" ValidationGroup="profile"
                OnClick="change_click" Text="Change Image" />
            <br />
            <asp:RequiredFieldValidator ID="Rfv1" runat="server" ControlToValidate="FileUpload1"
                ErrorMessage="*" ForeColor="Red" ValidationGroup="profile"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regexv1" runat="server" ErrorMessage="!Invalid Image Type"
                ValidationExpression="^.*\.[[jJ][pP][gG]| [gG][iI][fF]| [pP][nN][gG]]"
                ControlToValidate="FileUpload1" ForeColor="Red" ValidationGroup="profile"></asp:RegularExpressionValidator>
            
        </div>
        
        <div id="EducationQualification">
            <h2>Educational Qualification</h2>
            <asp:FormView ID="FormView2" runat="server" DataKeyNames="Id" DataSourceID="DSeduqual">
                <ItemTemplate>
                    <table style="border-spacing:10px; border-collapse:separate">
                        <tr>
                            <th>

                            </th>
                            <th>
                                Stream
                            </th>
                            <th>
                                Passout Year
                            </th>
                            <th>
                                Board/University
                            </th>
                            <th>
                                Percentage
                            </th>
                        </tr>
                        <tr>
                            <th>
                                10th
                            </th>
                            <td>
                                <asp:Label ID="tnstreamLabel" runat="server" Text='<%# Bind("tnstream")%>' />
                            </td>
                            <td>
                                <asp:Label ID="tnpassLabel" runat="server" Text='<%# Bind("tnpass")%>' />
                            </td>
                            <td>
                                <asp:Label ID="tnschLabel" runat="server" Text='<%# Bind("tnsch")%>' />
                            </td>
                            <td>
                                <asp:Label ID="tnperLabel" runat="server" Text='<%# Bind("tnper")%>' />
                            </td>                            
                        </tr>
                        <tr>
                            <th>
                                12th
                            </th>
                            <td>
                                <asp:Label ID ="twstreamLabel" runat="server" Text='<%# Bind("twstream") %>' />
                            </td>
                            <td>
                                <asp:Label ID ="twpassLabel" runat="server" Text='<%# Bind("twpass") %>' />
                            </td>
                            <td>
                                <asp:Label ID ="twschLabel" runat="server" Text='<%# Bind("twsch") %>' />
                            </td>
                            <td>
                                <asp:Label ID ="twperLabel" runat="server" Text='<%# Bind("twper") %>' />
                            </td>
                        </tr>
                        <tr>
                            <th>
                                Graduation
                            </th>
                            <td>
                                <asp:Label ID="grstreamLabel" runat="server" Text='<%# Bind("grstream") %>' />
                            </td>
                            <td>
                                <asp:Label ID="grpassLabel" runat="server" Text='<%# Bind("grpass") %>' />
                            </td>
                            <td>
                                <asp:Label ID="grcolLabel" runat="server" Text='<%# Bind("grcol") %>' />
                            </td>
                            <td>
                                <asp:Label ID="grperLabel" runat="server" Text='<%# Bind("grper") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
							<td>&nbsp;&nbsp;<asp:LinkButton ID="EditButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 50px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
								runat="server" CausesValidation="False"
								CommandName="Edit" Text="Edit" />
							</td>
							<td></td>
							<td></td>
							<td></td>
                        </tr>
                    </table>
                </ItemTemplate>
                <EditItemTemplate>
                    <table style="border-spacing:10px; border-collapse:separate">
                        <tr>
                            <th>

                            </th>
                            <th>
                                Stream
                            </th>
                            <th>
                                Passout Year
                            </th>
                            <th>
                                Board/University
                            </th>
                            <th>
                                Percentage
                            </th>
                        </tr>
                        <tr>
                            <th>
                                10th
                            </th>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="100px" SelectedValue='<%# Bind("tnstream") %>'>
									<asp:ListItem Text="Select" Value="">
									</asp:ListItem>
									<asp:ListItem Text="English" Value="English"></asp:ListItem>
									<asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
								</asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID="tnpassTb" runat="server" Text='<%# Bind("tnpass")%>' />
                            </td>
                            <td>
                                <asp:TextBox ID="tnschTb" runat="server" Text='<%# Bind("tnsch")%>' />
                            </td>
                            <td>
                                <asp:TextBox ID="tnperTb" runat="server" Text='<%# Bind("tnper")%>' />
                            </td>                            
                        </tr>
                        <tr>
                            <th>
                                12th
                            </th>
                            <td>
                                <asp:DropDownList ID="DropDownList3" runat="server" Width="100px" SelectedValue='<%# Bind("twstream") %>'>
									<asp:ListItem Text="Select" Value="">
									</asp:ListItem>
									<asp:ListItem Text="Science" Value="Science"></asp:ListItem>
									<asp:ListItem Text="Commerce" Value="Commerce"></asp:ListItem>
									<asp:ListItem Text="Arts" Value="Arts"></asp:ListItem>
								</asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID ="twpassTb" runat="server" Text='<%# Bind("twpass") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID ="twschTb" runat="server" Text='<%# Bind("twsch") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID ="twperTb" runat="server" Text='<%# Bind("twper") %>' />
                            </td>
                        </tr>
                        <tr>
                            <th>
                                Graduation
                            </th>
                            <td>
                                <asp:DropDownList ID="DropDownList4" runat="server" Width="100px" SelectedValue='<%# Bind("grstream") %>'>
									<asp:ListItem Text="Select" Value="">
									</asp:ListItem>
									<asp:ListItem Text="MTech" Value="MTech"></asp:ListItem>
									<asp:ListItem Text="BTech" Value="BTech"></asp:ListItem>
									<asp:ListItem Text="BBA" Value="BBA"></asp:ListItem>									
								</asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID="grpassTb" runat="server" Text='<%# Bind("grpass") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="grcolTb" runat="server" Text='<%# Bind("grcol") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="grperTb" runat="server" Text='<%# Bind("grper") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
							<td>&nbsp;&nbsp;<asp:LinkButton ID="UpdateButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 100px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
								runat="server" CausesValidation="True"
								CommandName="Update" Text="Update" />
							</td>
							<td>&nbsp;&nbsp;<asp:LinkButton ID="UpdateCancelButton" Style="background-color: White; border: 1px; border-color: Black; color: #669; width: 100px; text-align: center; font-family: Times New Roman; padding: 2px 2px 2px 2px; margin: 0 0 0 0;"
								runat="server"
								CausesValidation="False" CommandName="Cancel" Text="Cancel" />
							</td>
							<td></td>
							<td></td>
                        </tr>
                    </table>
                </EditItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="DSeduqual" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Id], [tnstream], [tnpass], [tnsch], [tnper], [twstream], [twpass], [twsch], [twper], [grstream], [grpass], [grcol], [grper] FROM [Students] WHERE ([email] = @email)"
                UpdateCommand="Update [Students] SET [tnstream]=@tnstream, [tnpass]=@tnpass, [tnsch]=@tnsch, [tnper]=@tnper, [twstream]=@twstream, [twpass]=@twpass, [twsch]=@twsch, [twper]=@twper, [grstream]=@grstream, [grpass]=@grpass, [grcol]=@grcol, [grper]=@grper where ([Id] = @Id)" >
                <SelectParameters>
                    <asp:SessionParameter Name="email" SessionField="StudentUser" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="tnstream" Type="String"/>
					<asp:Parameter Name="tnpass" Type="String" />
					<asp:Parameter Name="tnsch" Type="String" />
					<asp:Parameter Name="tnper" Type="String" />
					<asp:Parameter Name="twstream" Type="String" />
					<asp:Parameter Name="twpass" Type="String" />
					<asp:Parameter Name="twsch" Type="String" />
					<asp:Parameter Name="twper" Type="String" />
					<asp:Parameter Name="grstream" Type="String" />
					<asp:Parameter Name="grpass" Type="String" />
					<asp:Parameter Name="grcol" Type="String" />
					<asp:Parameter Name="grper" Type="String" />
					
                </UpdateParameters>
            </asp:SqlDataSource> 
        </div>
        <div id="TechSkills">
            <h2>Technical Skills</h2>
            <asp:FormView ID="techForm" runat="server" DataKeyNames="Id" DataSourceID="DStechskill">
                <ItemTemplate>
                    <table>
                        <tr>
                            <th>
                                Programming Languages
                            </th>
                            <td>:
                                <asp:Label ID="lblLang" runat="server" Text='<%# Bind("prog") %>'/>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                Training(If any)
                            </th>
                            <td>:
                                <asp:Label ID="lblTraining" runat="server" Text='<%# Bind("training") %>' />
                            </td>
                        </tr>
                        <tr>
                            <th>

                            </th>
                            <td>
                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="true" CommandName="Edit" Text="Edit"/>
                                                                    
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <EditItemTemplate>
                    <table>
                        <tr>
                            <th>
                                Programming Languages
                            </th>
                            <td>:
                                <asp:TextBox ID="tbProg" runat="server" Text='<%# Bind("prog") %>'/>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                Training(If any)
                            </th>
                            <td>:
                                <asp:TextBox ID="tbTraining" runat="server" Text='<%# Bind("training") %>' />
                            </td>
                        </tr>
                        <tr>
                            <th>

                            </th>
                            <td>
                                <asp:LinkButton ID="Updatebutton" runat="server" Text="Update" CommandName="Update" />
                                &nbsp;&nbsp;
                                <asp:LinkButton ID="Cancelbutton" runat="server" Text="Cancel" CommandName="Cancel" />
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="DStechskill" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Students] WHERE [Id] = @Id" 
                InsertCommand="INSERT INTO [Students] ([prog], [training]) VALUES (@prog, @training)" 
                SelectCommand="SELECT [Id], [prog], [training] FROM [Students] where ([email]=@email)" 
                UpdateCommand="UPDATE [Students] SET [prog] = @prog, [training] = @training WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="prog" Type="String" />
                    <asp:Parameter Name="training" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="prog" Type="String" />
                    <asp:Parameter Name="training" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
                <SelectParameters>
                    <asp:SessionParameter SessionField="StudentUser" Name="email" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div id="Achievements">
            <h2>Achievements</h2>
            <asp:FormView ID="FormView3" runat="server" DataKeyNames="Id" DataSourceID="DSachievements">
                <EditItemTemplate>
                    <table>
                        <tr>
                            <th>Achievement</th>
                            <td>:
                                <asp:TextBox ID="tblach" runat="server" Text='<%# Bind("achievement") %>' />
                            </td>
                        </tr>
                        <tr>
                            <th>

                            </th>
                            <td>
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </td>
                        </tr>
                    </table>                  
                    
                </EditItemTemplate>
                
                <ItemTemplate>
                    <table>
                        <tr>
                            <th>Achievement</th>
                            <td>:
                                <asp:Label ID="lblach" runat="server" Text='<%# Bind("achievement") %>' />
                            </td>
                        </tr>
                        <tr>
                            <th>

                            </th>
                            <td>
                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            </td>
                        </tr>
                    </table>            
                </ItemTemplate>               
            </asp:FormView>

            <asp:SqlDataSource ID="DSachievements" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"                  
                SelectCommand="SELECT [Id], [achievement] FROM [Students] where ([email] = @email)" 
                UpdateCommand="UPDATE [Students] SET [achievement] = @achievement WHERE [Id] = @Id">
                
                <SelectParameters>
                    <asp:SessionParameter Name="email" SessionField="StudentUser" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="achievement" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
</asp:Content>

