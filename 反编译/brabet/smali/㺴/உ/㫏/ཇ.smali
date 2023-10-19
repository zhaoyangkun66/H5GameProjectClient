.class public final synthetic L㺴/உ/㫏/ཇ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# instance fields
.field public final synthetic உ:Ljava/lang/String;

.field public final synthetic 㚬:Lcom/facebook/LoginStatusCallback;

.field public final synthetic 㺴:Ljava/lang/String;

.field public final synthetic 䂻:Lcom/facebook/login/LoginLogger;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㫏/ཇ;->உ:Ljava/lang/String;

    iput-object p2, p0, L㺴/உ/㫏/ཇ;->䂻:Lcom/facebook/login/LoginLogger;

    iput-object p3, p0, L㺴/உ/㫏/ཇ;->㚬:Lcom/facebook/LoginStatusCallback;

    iput-object p4, p0, L㺴/உ/㫏/ཇ;->㺴:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final completed(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, L㺴/உ/㫏/ཇ;->உ:Ljava/lang/String;

    iget-object v1, p0, L㺴/உ/㫏/ཇ;->䂻:Lcom/facebook/login/LoginLogger;

    iget-object v2, p0, L㺴/உ/㫏/ཇ;->㚬:Lcom/facebook/LoginStatusCallback;

    iget-object v3, p0, L㺴/உ/㫏/ཇ;->㺴:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/login/LoginManager;->உ(Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
