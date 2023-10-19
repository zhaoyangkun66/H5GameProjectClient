.class public final synthetic L㺴/உ/㫏/㹖;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Landroid/os/Bundle;

.field public final synthetic 䂻:Lcom/facebook/login/LoginLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/LoginLogger;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㫏/㹖;->䂻:Lcom/facebook/login/LoginLogger;

    iput-object p2, p0, L㺴/உ/㫏/㹖;->㚬:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/㫏/㹖;->䂻:Lcom/facebook/login/LoginLogger;

    iget-object v1, p0, L㺴/உ/㫏/㹖;->㚬:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/facebook/login/LoginLogger;->உ(Lcom/facebook/login/LoginLogger;Landroid/os/Bundle;)V

    return-void
.end method
