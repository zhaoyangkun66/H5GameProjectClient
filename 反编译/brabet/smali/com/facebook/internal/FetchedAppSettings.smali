.class public final Lcom/facebook/internal/FetchedAppSettings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;,
        Lcom/facebook/internal/FetchedAppSettings$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/internal/FetchedAppSettings$Companion;


# instance fields
.field private final MACARuleMatchingSetting:Lorg/json/JSONArray;

.field private final automaticLoggingEnabled:Z

.field private final codelessEventsEnabled:Z

.field private final dialogConfigurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private final errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

.field private final eventBindings:Lorg/json/JSONArray;

.field private final iAPAutomaticLoggingEnabled:Z

.field private final monitorViaDialogEnabled:Z

.field private final nuxContent:Ljava/lang/String;

.field private final nuxEnabled:Z

.field private final protectedModeStandardParamsSetting:Lorg/json/JSONArray;

.field private final rawAamRules:Ljava/lang/String;

.field private final restrictiveDataSetting:Ljava/lang/String;

.field private final sdkUpdateMessage:Ljava/lang/String;

.field private final sessionTimeoutInSeconds:I

.field private final smartLoginBookmarkIconURL:Ljava/lang/String;

.field private final smartLoginMenuIconURL:Ljava/lang/String;

.field private final smartLoginOptions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;"
        }
    .end annotation
.end field

.field private final suggestedEventsSetting:Ljava/lang/String;

.field private final supportsImplicitLogging:Z

.field private final trackUninstallEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/internal/FetchedAppSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/FetchedAppSettings$Companion;-><init>(Lḓ/ᓭ/㺴/ᆻ;)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettings;->Companion:Lcom/facebook/internal/FetchedAppSettings$Companion;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;Z",
            "Lcom/facebook/internal/FacebookRequestErrorClassification;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p5

    move-object v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p14

    const-string v8, "nuxContent"

    invoke-static {p2, v8}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "smartLoginOptions"

    invoke-static {p5, v8}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "dialogConfigurations"

    invoke-static {p6, v8}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "errorClassification"

    invoke-static {v4, v8}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "smartLoginBookmarkIconURL"

    invoke-static {v5, v8}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "smartLoginMenuIconURL"

    invoke-static {v6, v8}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "sdkUpdateMessage"

    invoke-static {v7, v8}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v8, p1

    iput-boolean v8, v0, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging:Z

    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->nuxContent:Ljava/lang/String;

    move v1, p3

    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->nuxEnabled:Z

    move v1, p4

    iput v1, v0, Lcom/facebook/internal/FetchedAppSettings;->sessionTimeoutInSeconds:I

    iput-object v2, v0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginOptions:Ljava/util/EnumSet;

    iput-object v3, v0, Lcom/facebook/internal/FetchedAppSettings;->dialogConfigurations:Ljava/util/Map;

    move/from16 v1, p7

    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->automaticLoggingEnabled:Z

    iput-object v4, v0, Lcom/facebook/internal/FetchedAppSettings;->errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

    iput-object v5, v0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginBookmarkIconURL:Ljava/lang/String;

    iput-object v6, v0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginMenuIconURL:Ljava/lang/String;

    move/from16 v1, p11

    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->iAPAutomaticLoggingEnabled:Z

    move/from16 v1, p12

    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->codelessEventsEnabled:Z

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->eventBindings:Lorg/json/JSONArray;

    iput-object v7, v0, Lcom/facebook/internal/FetchedAppSettings;->sdkUpdateMessage:Ljava/lang/String;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->trackUninstallEnabled:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->monitorViaDialogEnabled:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->rawAamRules:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->suggestedEventsSetting:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->restrictiveDataSetting:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->protectedModeStandardParamsSetting:Lorg/json/JSONArray;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->MACARuleMatchingSetting:Lorg/json/JSONArray;

    return-void
.end method

.method public static final getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    .locals 1

    sget-object v0, Lcom/facebook/internal/FetchedAppSettings;->Companion:Lcom/facebook/internal/FetchedAppSettings$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/internal/FetchedAppSettings$Companion;->getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAutomaticLoggingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->automaticLoggingEnabled:Z

    return v0
.end method

.method public final getCodelessEventsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->codelessEventsEnabled:Z

    return v0
.end method

.method public final getDialogConfigurations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->dialogConfigurations:Ljava/util/Map;

    return-object v0
.end method

.method public final getErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

    return-object v0
.end method

.method public final getEventBindings()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->eventBindings:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final getIAPAutomaticLoggingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->iAPAutomaticLoggingEnabled:Z

    return v0
.end method

.method public final getMACARuleMatchingSetting()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->MACARuleMatchingSetting:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final getMonitorViaDialogEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->monitorViaDialogEnabled:Z

    return v0
.end method

.method public final getNuxContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxContent:Ljava/lang/String;

    return-object v0
.end method

.method public final getNuxEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxEnabled:Z

    return v0
.end method

.method public final getProtectedModeStandardParamsSetting()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->protectedModeStandardParamsSetting:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final getRawAamRules()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->rawAamRules:Ljava/lang/String;

    return-object v0
.end method

.method public final getRestrictiveDataSetting()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->restrictiveDataSetting:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkUpdateMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->sdkUpdateMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionTimeoutInSeconds()I
    .locals 1

    iget v0, p0, Lcom/facebook/internal/FetchedAppSettings;->sessionTimeoutInSeconds:I

    return v0
.end method

.method public final getSmartLoginBookmarkIconURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginBookmarkIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getSmartLoginMenuIconURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginMenuIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getSmartLoginOptions()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginOptions:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final getSuggestedEventsSetting()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->suggestedEventsSetting:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackUninstallEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->trackUninstallEnabled:Z

    return v0
.end method

.method public final supportsImplicitLogging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging:Z

    return v0
.end method
