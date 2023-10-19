.class public Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ἥ/䆀;


# instance fields
.field public final உ:Ljava/lang/Object;

.field public final 䂻:L㚬/ἥ/䂻$உ;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->உ:Ljava/lang/Object;

    sget-object v0, L㚬/ἥ/䂻;->㚬:L㚬/ἥ/䂻;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, L㚬/ἥ/䂻;->㚬(Ljava/lang/Class;)L㚬/ἥ/䂻$உ;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->䂻:L㚬/ἥ/䂻$உ;

    return-void
.end method


# virtual methods
.method public 㺴(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->䂻:L㚬/ἥ/䂻$உ;

    iget-object v1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->உ:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1}, L㚬/ἥ/䂻$உ;->உ(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;Ljava/lang/Object;)V

    return-void
.end method
