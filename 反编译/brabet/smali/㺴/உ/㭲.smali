.class public final synthetic L㺴/உ/㭲;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic உ:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/GraphRequest$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㭲;->உ:Lcom/facebook/GraphRequest$Callback;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    iget-object v0, p0, L㺴/உ/㭲;->உ:Lcom/facebook/GraphRequest$Callback;

    invoke-static {v0, p1}, Lcom/facebook/GraphRequest;->உ(Lcom/facebook/GraphRequest$Callback;Lcom/facebook/GraphResponse;)V

    return-void
.end method
