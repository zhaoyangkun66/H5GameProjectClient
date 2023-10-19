.class public final synthetic L㺴/உ/ㄬ/உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/உ/ḓ/䂻;


# instance fields
.field public final synthetic உ:Lcom/facebook/CallbackManager;

.field public final synthetic 㚬:Lḓ/ᓭ/㺴/ბ;

.field public final synthetic 䂻:I


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/CallbackManager;ILḓ/ᓭ/㺴/ბ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ㄬ/உ;->உ:Lcom/facebook/CallbackManager;

    iput p2, p0, L㺴/உ/ㄬ/உ;->䂻:I

    iput-object p3, p0, L㺴/உ/ㄬ/உ;->㚬:Lḓ/ᓭ/㺴/ბ;

    return-void
.end method


# virtual methods
.method public final உ(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, L㺴/உ/ㄬ/உ;->உ:Lcom/facebook/CallbackManager;

    iget v1, p0, L㺴/உ/ㄬ/உ;->䂻:I

    iget-object v2, p0, L㺴/உ/ㄬ/உ;->㚬:Lḓ/ᓭ/㺴/ბ;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/internal/DialogPresenter;->உ(Lcom/facebook/CallbackManager;ILḓ/ᓭ/㺴/ბ;Landroid/util/Pair;)V

    return-void
.end method
