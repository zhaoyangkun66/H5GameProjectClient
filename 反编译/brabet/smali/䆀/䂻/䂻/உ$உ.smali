.class public L䆀/䂻/䂻/உ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L䆀/䂻/䂻/உ;->ᆻ(Lorg/games/app/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic உ:Lorg/games/app/MainActivity;


# direct methods
.method public constructor <init>(L䆀/䂻/䂻/உ;Lorg/games/app/MainActivity;)V
    .locals 0

    iput-object p2, p0, L䆀/䂻/䂻/உ$உ;->உ:Lorg/games/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    const-string v0, "BwACBAMODgpBDg8iAA8CBA0="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, L䆀/䂻/䂻/உ;->㺴()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, L䆀/䂻/䂻/உ;->䆀()L䆀/䂻/䂻/உ;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, L䆀/䂻/䂻/உ;->㹖(ILjava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BwACBAMODgpBBBMTDhNbQQ=="

    invoke-static {v2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, L䆀/䂻/䂻/உ;->㺴()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, L䆀/䂻/䂻/உ;->䆀()L䆀/䂻/䂻/உ;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, L䆀/䂻/䂻/உ;->㹖(ILjava/lang/String;)V

    instance-of p1, p1, Lcom/facebook/FacebookException;

    if-eqz p1, :cond_0

    invoke-static {}, L䆀/䂻/䂻/உ;->䆀()L䆀/䂻/䂻/உ;

    move-result-object p1

    invoke-virtual {p1}, L䆀/䂻/䂻/உ;->ἥ()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, L䆀/䂻/䂻/உ$உ;->உ(Lcom/facebook/login/LoginResult;)V

    return-void
.end method

.method public உ(Lcom/facebook/login/LoginResult;)V
    .locals 2

    invoke-static {}, L䆀/䂻/䂻/உ;->㺴()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BwACBAMODgpBDQ4GCA8zBBIUDRU="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, L䆀/䂻/䂻/உ;->䆀()L䆀/䂻/䂻/உ;

    move-result-object v0

    iget-object v1, p0, L䆀/䂻/䂻/உ$உ;->உ:Lorg/games/app/MainActivity;

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, L䆀/䂻/䂻/உ;->ᓭ(Landroid/app/Activity;Lcom/facebook/AccessToken;)V

    return-void
.end method
