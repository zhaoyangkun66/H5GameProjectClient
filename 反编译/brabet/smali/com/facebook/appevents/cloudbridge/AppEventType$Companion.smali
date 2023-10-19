.class public final Lcom/facebook/appevents/cloudbridge/AppEventType$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/cloudbridge/AppEventType;
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

    invoke-direct {p0}, Lcom/facebook/appevents/cloudbridge/AppEventType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lcom/facebook/appevents/cloudbridge/AppEventType;
    .locals 1

    const-string v0, "rawValue"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MOBILE_APP_INSTALL"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/facebook/appevents/cloudbridge/AppEventType;->MOBILE_APP_INSTALL:Lcom/facebook/appevents/cloudbridge/AppEventType;

    goto :goto_0

    :cond_0
    const-string v0, "CUSTOM_APP_EVENTS"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/facebook/appevents/cloudbridge/AppEventType;->CUSTOM:Lcom/facebook/appevents/cloudbridge/AppEventType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/facebook/appevents/cloudbridge/AppEventType;->OTHER:Lcom/facebook/appevents/cloudbridge/AppEventType;

    :goto_0
    return-object p1
.end method
