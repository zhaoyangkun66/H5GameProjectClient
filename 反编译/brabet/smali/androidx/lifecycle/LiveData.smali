.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$உ;,
        Landroidx/lifecycle/LiveData$䂻;,
        Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ಫ:Ljava/lang/Object;


# instance fields
.field public final உ:Ljava/lang/Object;

.field public ᆻ:I

.field public volatile ḓ:Ljava/lang/Object;

.field public ℓ:Z

.field public ㄏ:Z

.field public 㚬:I

.field public 㺴:Z

.field public 䂻:L㚬/㚬/உ/䂻/䂻;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb<",
            "L\u36ac/\u1f25/\u0f47<",
            "-TT;>;",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.\u40bb;>;"
        }
    .end annotation
.end field

.field public volatile 䆀:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/LiveData;->ಫ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->உ:Ljava/lang/Object;

    new-instance v0, L㚬/㚬/உ/䂻/䂻;

    invoke-direct {v0}, L㚬/㚬/உ/䂻/䂻;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->䂻:L㚬/㚬/உ/䂻/䂻;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/LiveData;->㚬:I

    sget-object v0, Landroidx/lifecycle/LiveData;->ಫ:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->䆀:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->ḓ:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->ᆻ:I

    return-void
.end method

.method public static உ(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, L㚬/㚬/உ/உ/உ;->䂻()L㚬/㚬/உ/உ/உ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㚬/உ/உ/உ;->உ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ಫ(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "setValue"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->உ(Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/LiveData;->ᆻ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->ᆻ:I

    iput-object p1, p0, Landroidx/lifecycle/LiveData;->ḓ:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->㺴(Landroidx/lifecycle/LiveData$䂻;)V

    return-void
.end method

.method public ᆻ()V
    .locals 0

    return-void
.end method

.method public ḓ(L㚬/ἥ/ℓ;L㚬/ἥ/ཇ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u1f25/\u2113;",
            "L\u36ac/\u1f25/\u0f47<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observe"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->உ(Ljava/lang/String;)V

    invoke-interface {p1}, L㚬/ἥ/ℓ;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/ἥ/ḓ;->䂻()L㚬/ἥ/ḓ$㚬;

    move-result-object v0

    sget-object v1, L㚬/ἥ/ḓ$㚬;->䂻:L㚬/ἥ/ḓ$㚬;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;L㚬/ἥ/ℓ;L㚬/ἥ/ཇ;)V

    iget-object v1, p0, Landroidx/lifecycle/LiveData;->䂻:L㚬/㚬/உ/䂻/䂻;

    invoke-virtual {v1, p2, v0}, L㚬/㚬/உ/䂻/䂻;->ᆻ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/LiveData$䂻;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData$䂻;->ಫ(L㚬/ἥ/ℓ;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, L㚬/ἥ/ℓ;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object p1

    invoke-virtual {p1, v0}, L㚬/ἥ/ḓ;->உ(L㚬/ἥ/ᆻ;)V

    return-void
.end method

.method public ℓ()V
    .locals 0

    return-void
.end method

.method public ㄏ(L㚬/ἥ/ཇ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u1f25/\u0f47<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "removeObserver"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->உ(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->䂻:L㚬/㚬/உ/䂻/䂻;

    invoke-virtual {v0, p1}, L㚬/㚬/உ/䂻/䂻;->ℓ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData$䂻;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$䂻;->ㄏ()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$䂻;->ℓ(Z)V

    return-void
.end method

.method public final 㚬(Landroidx/lifecycle/LiveData$䂻;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.\u40bb;)V"
        }
    .end annotation

    iget-boolean v0, p1, Landroidx/lifecycle/LiveData$䂻;->䂻:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$䂻;->㧦()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$䂻;->ℓ(Z)V

    return-void

    :cond_1
    iget v0, p1, Landroidx/lifecycle/LiveData$䂻;->㚬:I

    iget v1, p0, Landroidx/lifecycle/LiveData;->ᆻ:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    iput v1, p1, Landroidx/lifecycle/LiveData$䂻;->㚬:I

    iget-object p1, p1, Landroidx/lifecycle/LiveData$䂻;->உ:L㚬/ἥ/ཇ;

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->ḓ:Ljava/lang/Object;

    invoke-interface {p1, v0}, L㚬/ἥ/ཇ;->உ(Ljava/lang/Object;)V

    return-void
.end method

.method public 㺴(Landroidx/lifecycle/LiveData$䂻;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.\u40bb;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->ℓ:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->ㄏ:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->ℓ:Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->ㄏ:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->㚬(Landroidx/lifecycle/LiveData$䂻;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->䂻:L㚬/㚬/உ/䂻/䂻;

    invoke-virtual {v1}, L㚬/㚬/உ/䂻/䂻;->㺴()L㚬/㚬/உ/䂻/䂻$㺴;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData$䂻;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/LiveData;->㚬(Landroidx/lifecycle/LiveData$䂻;)V

    iget-boolean v2, p0, Landroidx/lifecycle/LiveData;->ㄏ:Z

    if-eqz v2, :cond_3

    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->ㄏ:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->ℓ:Z

    return-void
.end method

.method public 䂻(I)V
    .locals 4

    iget v0, p0, Landroidx/lifecycle/LiveData;->㚬:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/lifecycle/LiveData;->㚬:I

    iget-boolean p1, p0, Landroidx/lifecycle/LiveData;->㺴:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/LiveData;->㺴:Z

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Landroidx/lifecycle/LiveData;->㚬:I

    if-eq v0, v2, :cond_5

    if-nez v0, :cond_1

    if-lez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-lez v0, :cond_2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->ᆻ()V

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->ℓ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_3
    move v0, v2

    goto :goto_0

    :cond_5
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->㺴:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->㺴:Z

    throw p1
.end method

.method public 䆀(L㚬/ἥ/ཇ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u1f25/\u0f47<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observeForever"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->உ(Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/LiveData$உ;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/LiveData$உ;-><init>(Landroidx/lifecycle/LiveData;L㚬/ἥ/ཇ;)V

    iget-object v1, p0, Landroidx/lifecycle/LiveData;->䂻:L㚬/㚬/உ/䂻/䂻;

    invoke-virtual {v1, p1, v0}, L㚬/㚬/உ/䂻/䂻;->ᆻ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData$䂻;

    instance-of v1, p1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData$䂻;->ℓ(Z)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
