.class public abstract Landroidx/lifecycle/LiveData$䂻;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "\u40bb"
.end annotation


# instance fields
.field public final உ:L㚬/ἥ/ཇ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u1f25/\u0f47<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public 㚬:I

.field public final synthetic 㺴:Landroidx/lifecycle/LiveData;

.field public 䂻:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;L㚬/ἥ/ཇ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u1f25/\u0f47<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/LiveData$䂻;->㺴:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/lifecycle/LiveData$䂻;->㚬:I

    iput-object p2, p0, Landroidx/lifecycle/LiveData$䂻;->உ:L㚬/ἥ/ཇ;

    return-void
.end method


# virtual methods
.method public ಫ(L㚬/ἥ/ℓ;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ℓ(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$䂻;->䂻:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$䂻;->䂻:Z

    iget-object v0, p0, Landroidx/lifecycle/LiveData$䂻;->㺴:Landroidx/lifecycle/LiveData;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->䂻(I)V

    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$䂻;->䂻:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/lifecycle/LiveData$䂻;->㺴:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->㺴(Landroidx/lifecycle/LiveData$䂻;)V

    :cond_2
    return-void
.end method

.method public ㄏ()V
    .locals 0

    return-void
.end method

.method public abstract 㧦()Z
.end method
