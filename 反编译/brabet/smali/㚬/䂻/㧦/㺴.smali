.class public abstract L㚬/䂻/㧦/㺴;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final 㚬:L㚬/䆀/䂻;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u4180/\u40bb<",
            "Ljava/lang/ref/WeakReference<",
            "L\u36ac/\u40bb/\u39e6/\u3eb4;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final 㺴:Ljava/lang/Object;

.field public static 䂻:I = -0x64


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, L㚬/䆀/䂻;

    invoke-direct {v0}, L㚬/䆀/䂻;-><init>()V

    sput-object v0, L㚬/䂻/㧦/㺴;->㚬:L㚬/䆀/䂻;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, L㚬/䂻/㧦/㺴;->㺴:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ཇ(L㚬/䂻/㧦/㺴;)V
    .locals 3

    sget-object v0, L㚬/䂻/㧦/㺴;->㺴:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, L㚬/䂻/㧦/㺴;->㲧(L㚬/䂻/㧦/㺴;)V

    sget-object v1, L㚬/䂻/㧦/㺴;->㚬:L㚬/䆀/䂻;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, L㚬/䆀/䂻;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static ᓭ(L㚬/䂻/㧦/㺴;)V
    .locals 1

    sget-object v0, L㚬/䂻/㧦/㺴;->㺴:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, L㚬/䂻/㧦/㺴;->㲧(L㚬/䂻/㧦/㺴;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static ḓ(Landroid/app/Activity;L㚬/䂻/㧦/㚬;)L㚬/䂻/㧦/㺴;
    .locals 1

    new-instance v0, L㚬/䂻/㧦/ḓ;

    invoke-direct {v0, p0, p1}, L㚬/䂻/㧦/ḓ;-><init>(Landroid/app/Activity;L㚬/䂻/㧦/㚬;)V

    return-object v0
.end method

.method public static ℓ()I
    .locals 1

    sget v0, L㚬/䂻/㧦/㺴;->䂻:I

    return v0
.end method

.method public static 㲧(L㚬/䂻/㧦/㺴;)V
    .locals 3

    sget-object v0, L㚬/䂻/㧦/㺴;->㺴:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, L㚬/䂻/㧦/㺴;->㚬:L㚬/䆀/䂻;

    invoke-virtual {v1}, L㚬/䆀/䂻;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/䂻/㧦/㺴;

    if-eq v2, p0, :cond_1

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static 䆀(Landroid/app/Dialog;L㚬/䂻/㧦/㚬;)L㚬/䂻/㧦/㺴;
    .locals 1

    new-instance v0, L㚬/䂻/㧦/ḓ;

    invoke-direct {v0, p0, p1}, L㚬/䂻/㧦/ḓ;-><init>(Landroid/app/Dialog;L㚬/䂻/㧦/㚬;)V

    return-object v0
.end method


# virtual methods
.method public ڈ(I)V
    .locals 0

    return-void
.end method

.method public abstract ಋ(Landroid/view/View;)V
.end method

.method public abstract ಫ()Landroid/view/MenuInflater;
.end method

.method public abstract ม()V
.end method

.method public abstract ბ(Landroid/content/res/Configuration;)V
.end method

.method public abstract ᆻ(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract ḙ()V
.end method

.method public abstract ἥ()V
.end method

.method public abstract ᾦ(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public ㄏ()I
    .locals 1

    const/16 v0, -0x64

    return v0
.end method

.method public abstract ㄬ(I)Z
.end method

.method public abstract 㖪(Landroid/os/Bundle;)V
.end method

.method public abstract 㚬(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract 㞘()V
.end method

.method public abstract 㢏()V
.end method

.method public abstract 㧦()L㚬/䂻/㧦/உ;
.end method

.method public abstract 㫏(I)V
.end method

.method public abstract 㭲(Landroid/os/Bundle;)V
.end method

.method public abstract 㰫(Ljava/lang/CharSequence;)V
.end method

.method public abstract 㲝(Landroid/os/Bundle;)V
.end method

.method public abstract 㹖()V
.end method

.method public 㺴(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
