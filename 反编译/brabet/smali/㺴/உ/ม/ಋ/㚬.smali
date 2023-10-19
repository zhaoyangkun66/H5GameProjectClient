.class public final synthetic L㺴/உ/ม/ಋ/㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/appevents/internal/FileDownloadTask$Callback;


# instance fields
.field public final synthetic உ:Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

.field public final synthetic 䂻:Lcom/facebook/appevents/ml/Model;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/ml/ModelManager$TaskHandler;Lcom/facebook/appevents/ml/Model;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ม/ಋ/㚬;->உ:Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    iput-object p2, p0, L㺴/உ/ม/ಋ/㚬;->䂻:Lcom/facebook/appevents/ml/Model;

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, L㺴/உ/ม/ಋ/㚬;->உ:Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    iget-object v1, p0, L㺴/உ/ม/ಋ/㚬;->䂻:Lcom/facebook/appevents/ml/Model;

    invoke-static {v0, v1, p1}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;->䂻(Lcom/facebook/appevents/ml/ModelManager$TaskHandler;Lcom/facebook/appevents/ml/Model;Ljava/io/File;)V

    return-void
.end method
