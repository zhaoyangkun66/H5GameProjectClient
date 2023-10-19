.class public final synthetic L㺴/உ/ㄬ/ㄬ/உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ḓ:Ljava/util/concurrent/locks/ReentrantLock;

.field public final synthetic 㚬:Lḓ/ᓭ/㺴/ბ;

.field public final synthetic 㺴:Ljava/lang/String;

.field public final synthetic 䂻:Ljava/net/URL;

.field public final synthetic 䆀:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public synthetic constructor <init>(Ljava/net/URL;Lḓ/ᓭ/㺴/ბ;Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ㄬ/ㄬ/உ;->䂻:Ljava/net/URL;

    iput-object p2, p0, L㺴/உ/ㄬ/ㄬ/உ;->㚬:Lḓ/ᓭ/㺴/ბ;

    iput-object p3, p0, L㺴/உ/ㄬ/ㄬ/உ;->㺴:Ljava/lang/String;

    iput-object p4, p0, L㺴/உ/ㄬ/ㄬ/உ;->ḓ:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p5, p0, L㺴/உ/ㄬ/ㄬ/உ;->䆀:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, L㺴/உ/ㄬ/ㄬ/உ;->䂻:Ljava/net/URL;

    iget-object v1, p0, L㺴/உ/ㄬ/ㄬ/உ;->㚬:Lḓ/ᓭ/㺴/ბ;

    iget-object v2, p0, L㺴/உ/ㄬ/ㄬ/உ;->㺴:Ljava/lang/String;

    iget-object v3, p0, L㺴/உ/ㄬ/ㄬ/உ;->ḓ:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v4, p0, L㺴/உ/ㄬ/ㄬ/உ;->䆀:Ljava/util/concurrent/locks/Condition;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/internal/security/OidcSecurityUtil;->உ(Ljava/net/URL;Lḓ/ᓭ/㺴/ბ;Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;)V

    return-void
.end method
