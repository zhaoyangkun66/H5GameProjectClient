.class public final synthetic L㺴/உ/ม/ᾦ/உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Ljava/lang/String;

.field public final synthetic 㺴:Ljava/lang/String;

.field public final synthetic 䂻:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ม/ᾦ/உ;->䂻:Landroid/content/Context;

    iput-object p2, p0, L㺴/உ/ม/ᾦ/உ;->㚬:Ljava/lang/String;

    iput-object p3, p0, L㺴/உ/ม/ᾦ/உ;->㺴:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, L㺴/உ/ม/ᾦ/உ;->䂻:Landroid/content/Context;

    iget-object v1, p0, L㺴/உ/ม/ᾦ/உ;->㚬:Ljava/lang/String;

    iget-object v2, p0, L㺴/உ/ม/ᾦ/உ;->㺴:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->உ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
