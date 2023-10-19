.class public final synthetic L㺴/உ/㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic உ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic 㚬:Ljava/util/Set;

.field public final synthetic 㺴:Ljava/util/Set;

.field public final synthetic 䂻:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㺴;->உ:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, L㺴/உ/㺴;->䂻:Ljava/util/Set;

    iput-object p3, p0, L㺴/உ/㺴;->㚬:Ljava/util/Set;

    iput-object p4, p0, L㺴/உ/㺴;->㺴:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 4

    iget-object v0, p0, L㺴/உ/㺴;->உ:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, L㺴/உ/㺴;->䂻:Ljava/util/Set;

    iget-object v2, p0, L㺴/உ/㺴;->㚬:Ljava/util/Set;

    iget-object v3, p0, L㺴/உ/㺴;->㺴:Ljava/util/Set;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/AccessTokenManager;->㺴(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/GraphResponse;)V

    return-void
.end method
