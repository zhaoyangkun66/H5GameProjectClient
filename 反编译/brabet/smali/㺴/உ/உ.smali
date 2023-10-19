.class public final synthetic L㺴/உ/உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

.field public final synthetic 䂻:Lcom/facebook/AccessTokenManager;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/உ;->䂻:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, L㺴/உ/உ;->㚬:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/உ;->䂻:Lcom/facebook/AccessTokenManager;

    iget-object v1, p0, L㺴/உ/உ;->㚬:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-static {v0, v1}, Lcom/facebook/AccessTokenManager;->உ(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    return-void
.end method
