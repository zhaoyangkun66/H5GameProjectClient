.class public final synthetic L㺴/உ/㞘;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic உ:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㞘;->உ:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    iget-object v0, p0, L㺴/உ/㞘;->உ:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;

    invoke-static {v0, p1}, Lcom/facebook/GraphRequest$Companion;->㚬(Lcom/facebook/GraphRequest$GraphJSONObjectCallback;Lcom/facebook/GraphResponse;)V

    return-void
.end method
