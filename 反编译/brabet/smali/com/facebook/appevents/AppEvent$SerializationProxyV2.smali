.class public final Lcom/facebook/appevents/AppEvent$SerializationProxyV2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializationProxyV2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEvent$SerializationProxyV2$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/appevents/AppEvent$SerializationProxyV2$Companion;

.field private static final serialVersionUID:J = 0x4b1ad70b9L


# instance fields
.field private final checksum:Ljava/lang/String;

.field private final inBackground:Z

.field private final isImplicit:Z

.field private final jsonString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/appevents/AppEvent$SerializationProxyV2$Companion;-><init>(Lḓ/ᓭ/㺴/ᆻ;)V

    sput-object v0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->Companion:Lcom/facebook/appevents/AppEvent$SerializationProxyV2$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 1

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->jsonString:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->isImplicit:Z

    iput-boolean p3, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->inBackground:Z

    iput-object p4, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->checksum:Ljava/lang/String;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 7

    new-instance v6, Lcom/facebook/appevents/AppEvent;

    iget-object v1, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->jsonString:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->isImplicit:Z

    iget-boolean v3, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->inBackground:Z

    iget-object v4, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->checksum:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lḓ/ᓭ/㺴/ᆻ;)V

    return-object v6
.end method
