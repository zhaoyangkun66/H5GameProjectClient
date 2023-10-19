.class public final synthetic L㺴/உ/ḙ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Lcom/facebook/ProgressOutputStream;

.field public final synthetic 䂻:Lcom/facebook/GraphRequestBatch$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/GraphRequestBatch$Callback;Lcom/facebook/ProgressOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ḙ;->䂻:Lcom/facebook/GraphRequestBatch$Callback;

    iput-object p2, p0, L㺴/உ/ḙ;->㚬:Lcom/facebook/ProgressOutputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/ḙ;->䂻:Lcom/facebook/GraphRequestBatch$Callback;

    iget-object v1, p0, L㺴/உ/ḙ;->㚬:Lcom/facebook/ProgressOutputStream;

    invoke-static {v0, v1}, Lcom/facebook/ProgressOutputStream;->உ(Lcom/facebook/GraphRequestBatch$Callback;Lcom/facebook/ProgressOutputStream;)V

    return-void
.end method
