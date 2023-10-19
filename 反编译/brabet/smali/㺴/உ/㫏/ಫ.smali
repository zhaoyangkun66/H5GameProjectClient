.class public final synthetic L㺴/உ/㫏/ಫ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/login/LoginClient$OnCompletedListener;


# instance fields
.field public final synthetic உ:Lcom/facebook/login/LoginFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/LoginFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㫏/ಫ;->உ:Lcom/facebook/login/LoginFragment;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    iget-object v0, p0, L㺴/உ/㫏/ಫ;->உ:Lcom/facebook/login/LoginFragment;

    invoke-static {v0, p1}, Lcom/facebook/login/LoginFragment;->உ(Lcom/facebook/login/LoginFragment;Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method
