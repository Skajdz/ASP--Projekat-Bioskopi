#pragma checksum "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "383a772164d9780e40d83cdf8387ceee59af3fda"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Movies_Index), @"mvc.1.0.view", @"/Views/Movies/Index.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Movies/Index.cshtml", typeof(AspNetCore.Views_Movies_Index))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\_ViewImports.cshtml"
using MVC;

#line default
#line hidden
#line 2 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\_ViewImports.cshtml"
using MVC.Models;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"383a772164d9780e40d83cdf8387ceee59af3fda", @"/Views/Movies/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"9aa69464cafd4d76600b45784b8a784724c641a3", @"/Views/_ViewImports.cshtml")]
    public class Views_Movies_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<Application.DTO.MovieDTO>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Create", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(45, 1, true);
            WriteLiteral("\n");
            EndContext();
#line 3 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
  
    ViewData["Title"] = "Index";

#line default
#line hidden
            BeginContext(84, 25, true);
            WriteLiteral("\n<h1>Index</h1>\n\n<p>\n    ");
            EndContext();
            BeginContext(109, 37, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "383a772164d9780e40d83cdf8387ceee59af3fda3794", async() => {
                BeginContext(132, 10, true);
                WriteLiteral("Create New");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(146, 86, true);
            WriteLiteral("\n</p>\n<table class=\"table\">\n    <thead>\n        <tr>\n            <th>\n                ");
            EndContext();
            BeginContext(233, 38, false);
#line 16 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.Id));

#line default
#line hidden
            EndContext();
            BeginContext(271, 52, true);
            WriteLiteral("\n            </th>\n            <th>\n                ");
            EndContext();
            BeginContext(324, 41, false);
#line 19 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.Title));

#line default
#line hidden
            EndContext();
            BeginContext(365, 52, true);
            WriteLiteral("\n            </th>\n            <th>\n                ");
            EndContext();
            BeginContext(418, 52, false);
#line 22 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.StartShowingFrom));

#line default
#line hidden
            EndContext();
            BeginContext(470, 52, true);
            WriteLiteral("\n            </th>\n            <th>\n                ");
            EndContext();
            BeginContext(523, 48, false);
#line 25 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.DurationMins));

#line default
#line hidden
            EndContext();
            BeginContext(571, 52, true);
            WriteLiteral("\n            </th>\n            <th>\n                ");
            EndContext();
            BeginContext(624, 43, false);
#line 28 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.Country));

#line default
#line hidden
            EndContext();
            BeginContext(667, 52, true);
            WriteLiteral("\n            </th>\n            <th>\n                ");
            EndContext();
            BeginContext(720, 40, false);
#line 31 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.Year));

#line default
#line hidden
            EndContext();
            BeginContext(760, 52, true);
            WriteLiteral("\n            </th>\n            <th>\n                ");
            EndContext();
            BeginContext(813, 46, false);
#line 34 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.DisplayNameFor(model => model.PictureUrl));

#line default
#line hidden
            EndContext();
            BeginContext(859, 174, true);
            WriteLiteral("\n            </th>\n            <th>\n                Actors\n            </th>\n            <th>\n                Genres\n            </th>\n        </tr>\n    </thead>\n    <tbody>\n");
            EndContext();
#line 45 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
 foreach (var item in Model) {

#line default
#line hidden
            BeginContext(1064, 46, true);
            WriteLiteral("        <tr>\n            <td>\n                ");
            EndContext();
            BeginContext(1111, 37, false);
#line 48 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.Id));

#line default
#line hidden
            EndContext();
            BeginContext(1148, 52, true);
            WriteLiteral("\n            </td>\n            <td>\n                ");
            EndContext();
            BeginContext(1201, 40, false);
#line 51 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.Title));

#line default
#line hidden
            EndContext();
            BeginContext(1241, 52, true);
            WriteLiteral("\n            </td>\n            <td>\n                ");
            EndContext();
            BeginContext(1294, 51, false);
#line 54 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.StartShowingFrom));

#line default
#line hidden
            EndContext();
            BeginContext(1345, 52, true);
            WriteLiteral("\n            </td>\n            <td>\n                ");
            EndContext();
            BeginContext(1398, 47, false);
#line 57 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.DurationMins));

#line default
#line hidden
            EndContext();
            BeginContext(1445, 52, true);
            WriteLiteral("\n            </td>\n            <td>\n                ");
            EndContext();
            BeginContext(1498, 42, false);
#line 60 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.Country));

#line default
#line hidden
            EndContext();
            BeginContext(1540, 52, true);
            WriteLiteral("\n            </td>\n            <td>\n                ");
            EndContext();
            BeginContext(1593, 39, false);
#line 63 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.Year));

#line default
#line hidden
            EndContext();
            BeginContext(1632, 52, true);
            WriteLiteral("\n            </td>\n            <td>\n                ");
            EndContext();
            BeginContext(1685, 45, false);
#line 66 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.DisplayFor(modelItem => item.PictureUrl));

#line default
#line hidden
            EndContext();
            BeginContext(1730, 36, true);
            WriteLiteral("\n            </td>\n            <td>\n");
            EndContext();
#line 69 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
                 foreach(var glumac in item.Actors){
                

#line default
#line hidden
            BeginContext(1837, 41, false);
#line 70 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
            Write($"{glumac.FirstName} {glumac.LastName}, ");

#line default
#line hidden
            EndContext();
#line 70 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
                                                            
                }

#line default
#line hidden
            BeginContext(1898, 35, true);
            WriteLiteral("            </td>\n            <td>\n");
            EndContext();
#line 74 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
                 foreach(var zanr in item.Genres){
                

#line default
#line hidden
            BeginContext(2002, 16, false);
#line 75 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
            Write($"{zanr.Name}, ");

#line default
#line hidden
            EndContext();
#line 75 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
                                   
                }

#line default
#line hidden
            BeginContext(2038, 51, true);
            WriteLiteral("            </td>\n            <td>\n                ");
            EndContext();
            BeginContext(2090, 51, false);
#line 79 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.ActionLink("Edit", "Edit", new { id=item.Id }));

#line default
#line hidden
            EndContext();
            BeginContext(2141, 19, true);
            WriteLiteral(" |\n                ");
            EndContext();
            BeginContext(2161, 71, false);
#line 80 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.ActionLink("Details", "Details", new { /* id=item.PrimaryKey */ }));

#line default
#line hidden
            EndContext();
            BeginContext(2232, 19, true);
            WriteLiteral(" |\n                ");
            EndContext();
            BeginContext(2252, 55, false);
#line 81 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
           Write(Html.ActionLink("Delete", "Delete", new { id=item.Id }));

#line default
#line hidden
            EndContext();
            BeginContext(2307, 33, true);
            WriteLiteral("\n            </td>\n        </tr>\n");
            EndContext();
#line 84 "C:\Users\Luka\Desktop\Ivanov Projekat\Project-master\MVC\Views\Movies\Index.cshtml"
}

#line default
#line hidden
            BeginContext(2342, 22, true);
            WriteLiteral("    </tbody>\n</table>\n");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<Application.DTO.MovieDTO>> Html { get; private set; }
    }
}
#pragma warning restore 1591
