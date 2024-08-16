# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.


```mermaid
classDiagram

%% If you see this line, there is no Mermaid extension installed.
%% For example, use https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid

  namespace ManageAlertsService {
    class `ManageAlertsService.Alerts`["Alerts"]
    class `ManageAlertsService.AlertThresholds`["AlertThresholds"]
    class `ManageAlertsService.LevelNames`["LevelNames"]
    class `ManageAlertsService.ServiceAndMetricNames`["ServiceAndMetricNames"]
    class `ManageAlertsService.CodeLists`["CodeLists"]
    class `ManageAlertsService.CL_AggregationLevels`["CL_AggregationLevels"]
    class `ManageAlertsService.CL_ServiceScopes`["CL_ServiceScopes"]
    class `ManageAlertsService.CL_AlertTypes`["CL_AlertTypes"]
    class `ManageAlertsService.CL_ThresholdProperties`["CL_ThresholdProperties"]
    class `ManageAlertsService.CL_ThresholdOperators`["CL_ThresholdOperators"]
    class `ManageAlertsService.CL_AlertIncludeModes`["CL_AlertIncludeModes"]
    class `ManageAlertsService.AlertLevelItems`["AlertLevelItems"]
    class `ManageAlertsService.AlertServiceItems`["AlertServiceItems"]
  }

  `ManageAlertsService.Alerts` *--> "*" `ManageAlertsService.AlertLevelItems`
  `ManageAlertsService.Alerts` *--> "*" `ManageAlertsService.AlertServiceItems`
  `ManageAlertsService.Alerts` *--> "*" `ManageAlertsService.AlertThresholds`
  `ManageAlertsService.AlertThresholds` -->  `ManageAlertsService.Alerts`
  `ManageAlertsService.AlertLevelItems` -->  `ManageAlertsService.Alerts`
  `ManageAlertsService.AlertLevelItems` -->  `ManageAlertsService.LevelNames`
  `ManageAlertsService.AlertServiceItems` -->  `ManageAlertsService.Alerts`
  `ManageAlertsService.AlertServiceItems` -->  `ManageAlertsService.ServiceAndMetricNames`
```
