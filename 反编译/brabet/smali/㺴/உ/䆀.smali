.class public final synthetic L㺴/உ/䆀;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# instance fields
.field public final synthetic உ:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/䆀;->உ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .locals 1

    iget-object v0, p0, L㺴/உ/䆀;->உ:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/facebook/FacebookException;->உ(Ljava/lang/String;Z)V

    return-void
.end method
