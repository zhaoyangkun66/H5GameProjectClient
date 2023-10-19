.class public final synthetic L㺴/உ/㲝;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Lcom/facebook/GraphRequestBatch;

.field public final synthetic 䂻:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/facebook/GraphRequestBatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㲝;->䂻:Ljava/util/ArrayList;

    iput-object p2, p0, L㺴/உ/㲝;->㚬:Lcom/facebook/GraphRequestBatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/㲝;->䂻:Ljava/util/ArrayList;

    iget-object v1, p0, L㺴/உ/㲝;->㚬:Lcom/facebook/GraphRequestBatch;

    invoke-static {v0, v1}, Lcom/facebook/GraphRequest$Companion;->䂻(Ljava/util/ArrayList;Lcom/facebook/GraphRequestBatch;)V

    return-void
.end method
