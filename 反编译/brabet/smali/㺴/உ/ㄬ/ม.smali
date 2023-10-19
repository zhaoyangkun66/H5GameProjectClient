.class public final synthetic L㺴/உ/ㄬ/ม;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Lcom/facebook/internal/WorkQueue;

.field public final synthetic 䂻:Lcom/facebook/internal/WorkQueue$WorkNode;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/WorkQueue$WorkNode;Lcom/facebook/internal/WorkQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ㄬ/ม;->䂻:Lcom/facebook/internal/WorkQueue$WorkNode;

    iput-object p2, p0, L㺴/உ/ㄬ/ม;->㚬:Lcom/facebook/internal/WorkQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/ㄬ/ม;->䂻:Lcom/facebook/internal/WorkQueue$WorkNode;

    iget-object v1, p0, L㺴/உ/ㄬ/ม;->㚬:Lcom/facebook/internal/WorkQueue;

    invoke-static {v0, v1}, Lcom/facebook/internal/WorkQueue;->உ(Lcom/facebook/internal/WorkQueue$WorkNode;Lcom/facebook/internal/WorkQueue;)V

    return-void
.end method
