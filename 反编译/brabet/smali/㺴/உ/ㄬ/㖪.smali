.class public final synthetic L㺴/உ/ㄬ/㖪;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic உ:[Ljava/lang/String;

.field public final synthetic 㚬:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

.field public final synthetic 㺴:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic 䂻:I


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;ILcom/facebook/internal/WebDialog$UploadStagingResourcesTask;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ㄬ/㖪;->உ:[Ljava/lang/String;

    iput p2, p0, L㺴/உ/ㄬ/㖪;->䂻:I

    iput-object p3, p0, L㺴/உ/ㄬ/㖪;->㚬:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    iput-object p4, p0, L㺴/உ/ㄬ/㖪;->㺴:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 4

    iget-object v0, p0, L㺴/உ/ㄬ/㖪;->உ:[Ljava/lang/String;

    iget v1, p0, L㺴/உ/ㄬ/㖪;->䂻:I

    iget-object v2, p0, L㺴/உ/ㄬ/㖪;->㚬:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    iget-object v3, p0, L㺴/உ/ㄬ/㖪;->㺴:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->உ([Ljava/lang/String;ILcom/facebook/internal/WebDialog$UploadStagingResourcesTask;Ljava/util/concurrent/CountDownLatch;Lcom/facebook/GraphResponse;)V

    return-void
.end method
