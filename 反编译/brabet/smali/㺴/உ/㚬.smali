.class public final synthetic L㺴/உ/㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# instance fields
.field public final synthetic உ:Lcom/facebook/AccessTokenManager$RefreshResult;

.field public final synthetic ᆻ:Ljava/util/Set;

.field public final synthetic ḓ:Ljava/util/Set;

.field public final synthetic ℓ:Lcom/facebook/AccessTokenManager;

.field public final synthetic 㚬:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

.field public final synthetic 㺴:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic 䂻:Lcom/facebook/AccessToken;

.field public final synthetic 䆀:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/AccessTokenManager$RefreshResult;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/AccessTokenManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㚬;->உ:Lcom/facebook/AccessTokenManager$RefreshResult;

    iput-object p2, p0, L㺴/உ/㚬;->䂻:Lcom/facebook/AccessToken;

    iput-object p3, p0, L㺴/உ/㚬;->㚬:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    iput-object p4, p0, L㺴/உ/㚬;->㺴:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, L㺴/உ/㚬;->ḓ:Ljava/util/Set;

    iput-object p6, p0, L㺴/உ/㚬;->䆀:Ljava/util/Set;

    iput-object p7, p0, L㺴/உ/㚬;->ᆻ:Ljava/util/Set;

    iput-object p8, p0, L㺴/உ/㚬;->ℓ:Lcom/facebook/AccessTokenManager;

    return-void
.end method


# virtual methods
.method public final onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .locals 9

    iget-object v0, p0, L㺴/உ/㚬;->உ:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v1, p0, L㺴/உ/㚬;->䂻:Lcom/facebook/AccessToken;

    iget-object v2, p0, L㺴/உ/㚬;->㚬:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    iget-object v3, p0, L㺴/உ/㚬;->㺴:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, p0, L㺴/உ/㚬;->ḓ:Ljava/util/Set;

    iget-object v5, p0, L㺴/உ/㚬;->䆀:Ljava/util/Set;

    iget-object v6, p0, L㺴/உ/㚬;->ᆻ:Ljava/util/Set;

    iget-object v7, p0, L㺴/உ/㚬;->ℓ:Lcom/facebook/AccessTokenManager;

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/facebook/AccessTokenManager;->㚬(Lcom/facebook/AccessTokenManager$RefreshResult;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/AccessTokenManager;Lcom/facebook/GraphRequestBatch;)V

    return-void
.end method
