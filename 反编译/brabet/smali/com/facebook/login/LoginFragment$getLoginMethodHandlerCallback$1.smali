.class public final Lcom/facebook/login/LoginFragment$getLoginMethodHandlerCallback$1;
.super Lḓ/ᓭ/㺴/㧦;
.source ""

# interfaces
.implements Lḓ/ᓭ/㚬/㹖;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/LoginFragment;->getLoginMethodHandlerCallback(Landroidx/fragment/app/FragmentActivity;)Lḓ/ᓭ/㚬/㹖;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u1e13/\u14ed/\u3eb4/\u39e6;",
        "L\u1e13/\u14ed/\u36ac/\u3e56<",
        "L\u36ac/\u0b89/\u1e13/\u0b89;",
        "L\u1e13/\u39e6;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $activity:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic this$0:Lcom/facebook/login/LoginFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/login/LoginFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/LoginFragment$getLoginMethodHandlerCallback$1;->this$0:Lcom/facebook/login/LoginFragment;

    iput-object p2, p0, Lcom/facebook/login/LoginFragment$getLoginMethodHandlerCallback$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lḓ/ᓭ/㺴/㧦;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, L㚬/உ/ḓ/உ;

    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginFragment$getLoginMethodHandlerCallback$1;->invoke(L㚬/உ/ḓ/உ;)V

    sget-object p1, Lḓ/㧦;->உ:Lḓ/㧦;

    return-object p1
.end method

.method public final invoke(L㚬/உ/ḓ/உ;)V
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, L㚬/உ/ḓ/உ;->㧦()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/login/LoginFragment$getLoginMethodHandlerCallback$1;->this$0:Lcom/facebook/login/LoginFragment;

    invoke-virtual {v0}, Lcom/facebook/login/LoginFragment;->getLoginClient()Lcom/facebook/login/LoginClient;

    move-result-object v0

    sget-object v1, Lcom/facebook/login/LoginClient;->Companion:Lcom/facebook/login/LoginClient$Companion;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Companion;->getLoginRequestCode()I

    move-result v1

    invoke-virtual {p1}, L㚬/உ/ḓ/உ;->㧦()I

    move-result v2

    invoke-virtual {p1}, L㚬/உ/ḓ/உ;->ಫ()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/login/LoginClient;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/login/LoginFragment$getLoginMethodHandlerCallback$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
