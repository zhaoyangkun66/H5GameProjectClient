.class public final synthetic L㺴/உ/ม/ḙ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 䂻:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ม/ḙ;->䂻:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, L㺴/உ/ม/ḙ;->䂻:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/facebook/appevents/UserDataStore;->䂻(Landroid/os/Bundle;)V

    return-void
.end method
