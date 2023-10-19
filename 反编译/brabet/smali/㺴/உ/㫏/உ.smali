.class public final synthetic L㺴/உ/㫏/உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Lcom/facebook/login/LoginClient$Request;

.field public final synthetic 㺴:Landroid/os/Bundle;

.field public final synthetic 䂻:Lcom/facebook/login/CustomTabLoginMethodHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/CustomTabLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㫏/உ;->䂻:Lcom/facebook/login/CustomTabLoginMethodHandler;

    iput-object p2, p0, L㺴/உ/㫏/உ;->㚬:Lcom/facebook/login/LoginClient$Request;

    iput-object p3, p0, L㺴/உ/㫏/உ;->㺴:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, L㺴/உ/㫏/உ;->䂻:Lcom/facebook/login/CustomTabLoginMethodHandler;

    iget-object v1, p0, L㺴/உ/㫏/உ;->㚬:Lcom/facebook/login/LoginClient$Request;

    iget-object v2, p0, L㺴/உ/㫏/உ;->㺴:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/login/CustomTabLoginMethodHandler;->ಫ(Lcom/facebook/login/CustomTabLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    return-void
.end method
