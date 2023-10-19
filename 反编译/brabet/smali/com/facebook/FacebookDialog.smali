.class public interface abstract Lcom/facebook/FacebookDialog;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONTENT:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract canShow(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)Z"
        }
    .end annotation
.end method

.method public abstract createActivityResultContractForShowingDialog(Lcom/facebook/CallbackManager;)L㚬/உ/ḓ/䆀/உ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            ")",
            "L\u36ac/\u0b89/\u1e13/\u4180/\u0b89<",
            "TCONTENT;",
            "Lcom/facebook/CallbackManager$ActivityResultParameters;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "TRESU",
            "LT;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract show(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)V"
        }
    .end annotation
.end method
