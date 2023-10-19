.class public final Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lḓ/ᓭ/㺴/ᆻ;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;
    .locals 1

    const-string v0, "rawValue"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;->EXT_INFO:Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;

    invoke-virtual {v0}, Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;->getRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    sget-object p1, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;->ARRAY:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;->URL_SCHEMES:Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;

    invoke-virtual {v0}, Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;->getRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/facebook/appevents/cloudbridge/CustomEventField;->CONTENT_IDS:Lcom/facebook/appevents/cloudbridge/CustomEventField;

    invoke-virtual {v0}, Lcom/facebook/appevents/cloudbridge/CustomEventField;->getRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/facebook/appevents/cloudbridge/CustomEventField;->CONTENTS:Lcom/facebook/appevents/cloudbridge/CustomEventField;

    invoke-virtual {v0}, Lcom/facebook/appevents/cloudbridge/CustomEventField;->getRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$DataProcessingParameterName;->OPTIONS:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$DataProcessingParameterName;

    invoke-virtual {v0}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$DataProcessingParameterName;->getRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;->ADV_TE:Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;

    invoke-virtual {v0}, Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;->getRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    sget-object p1, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;->BOOL:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;->APP_TE:Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;

    invoke-virtual {v0}, Lcom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField;->getRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/facebook/appevents/cloudbridge/CustomEventField;->EVENT_TIME:Lcom/facebook/appevents/cloudbridge/CustomEventField;

    invoke-virtual {v0}, Lcom/facebook/appevents/cloudbridge/CustomEventField;->getRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;->INT:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
