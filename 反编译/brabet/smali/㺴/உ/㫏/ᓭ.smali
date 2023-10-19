.class public final synthetic L㺴/உ/㫏/ᓭ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# instance fields
.field public final synthetic உ:Lcom/facebook/login/LoginManager;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/LoginManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㫏/ᓭ;->உ:Lcom/facebook/login/LoginManager;

    return-void
.end method


# virtual methods
.method public final onActivityResult(ILandroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, L㺴/உ/㫏/ᓭ;->உ:Lcom/facebook/login/LoginManager;

    invoke-static {v0, p1, p2}, Lcom/facebook/login/LoginManager;->䂻(Lcom/facebook/login/LoginManager;ILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method
