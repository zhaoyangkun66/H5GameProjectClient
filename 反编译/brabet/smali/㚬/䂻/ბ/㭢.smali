.class public final L㚬/䂻/ბ/㭢;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/䂻/ბ/㭢$உ;,
        L㚬/䂻/ბ/㭢$䂻;,
        L㚬/䂻/ბ/㭢$䆀;,
        L㚬/䂻/ბ/㭢$㚬;,
        L㚬/䂻/ბ/㭢$㺴;,
        L㚬/䂻/ბ/㭢$ḓ;
    }
.end annotation


# static fields
.field public static final ಫ:L㚬/䂻/ბ/㭢$㚬;

.field public static final ℓ:Landroid/graphics/PorterDuff$Mode;

.field public static ㄏ:L㚬/䂻/ბ/㭢;


# instance fields
.field public உ:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "L\u36ac/\u4180/\u2113<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field public ᆻ:L㚬/䂻/ბ/㭢$ḓ;

.field public ḓ:Landroid/util/TypedValue;

.field public 㚬:L㚬/䆀/ℓ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u4180/\u2113<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final 㺴:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "L\u36ac/\u4180/\u3eb4<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public 䂻:L㚬/䆀/உ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "L\u36ac/\u40bb/\u10d1/\u3b62$\u3eb4;",
            ">;"
        }
    .end annotation
.end field

.field public 䆀:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, L㚬/䂻/ბ/㭢;->ℓ:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, L㚬/䂻/ბ/㭢$㚬;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, L㚬/䂻/ბ/㭢$㚬;-><init>(I)V

    sput-object v0, L㚬/䂻/ბ/㭢;->ಫ:L㚬/䂻/ბ/㭢$㚬;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, L㚬/䂻/ბ/㭢;->㺴:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static ม(Landroid/graphics/drawable/Drawable;L㚬/䂻/ბ/ᭊ;[I)V
    .locals 2

    invoke-static {p0}, L㚬/䂻/ბ/㰫;->உ(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string p0, "ResourceManagerInternal"

    const-string p1, "Mutated drawable is not the same instance as the input."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p1, L㚬/䂻/ბ/ᭊ;->㺴:Z

    if-nez v0, :cond_2

    iget-boolean v1, p1, L㚬/䂻/ბ/ᭊ;->㚬:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p1, L㚬/䂻/ბ/ᭊ;->உ:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-boolean v1, p1, L㚬/䂻/ბ/ᭊ;->㚬:Z

    if-eqz v1, :cond_4

    iget-object p1, p1, L㚬/䂻/ბ/ᭊ;->䂻:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_4
    sget-object p1, L㚬/䂻/ბ/㭢;->ℓ:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    invoke-static {v0, p1, p2}, L㚬/䂻/ბ/㭢;->ᆻ(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-gt p1, p2, :cond_5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_5
    return-void
.end method

.method public static ბ(L㚬/䂻/ბ/㭢;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    new-instance v0, L㚬/䂻/ბ/㭢$䆀;

    invoke-direct {v0}, L㚬/䂻/ბ/㭢$䆀;-><init>()V

    const-string v1, "vector"

    invoke-virtual {p0, v1, v0}, L㚬/䂻/ბ/㭢;->உ(Ljava/lang/String;L㚬/䂻/ბ/㭢$㺴;)V

    new-instance v0, L㚬/䂻/ბ/㭢$䂻;

    invoke-direct {v0}, L㚬/䂻/ბ/㭢$䂻;-><init>()V

    const-string v1, "animated-vector"

    invoke-virtual {p0, v1, v0}, L㚬/䂻/ბ/㭢;->உ(Ljava/lang/String;L㚬/䂻/ბ/㭢$㺴;)V

    new-instance v0, L㚬/䂻/ბ/㭢$உ;

    invoke-direct {v0}, L㚬/䂻/ბ/㭢$உ;-><init>()V

    const-string v1, "animated-selector"

    invoke-virtual {p0, v1, v0}, L㚬/䂻/ბ/㭢;->உ(Ljava/lang/String;L㚬/䂻/ბ/㭢$㺴;)V

    :cond_0
    return-void
.end method

.method public static ᆻ(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-static {p0, p1}, L㚬/䂻/ბ/㭢;->㹖(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ḓ(Landroid/util/TypedValue;)J
    .locals 4

    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget p0, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static declared-synchronized ℓ()L㚬/䂻/ბ/㭢;
    .locals 2

    const-class v0, L㚬/䂻/ბ/㭢;

    monitor-enter v0

    :try_start_0
    sget-object v1, L㚬/䂻/ბ/㭢;->ㄏ:L㚬/䂻/ბ/㭢;

    if-nez v1, :cond_0

    new-instance v1, L㚬/䂻/ბ/㭢;

    invoke-direct {v1}, L㚬/䂻/ბ/㭢;-><init>()V

    sput-object v1, L㚬/䂻/ბ/㭢;->ㄏ:L㚬/䂻/ბ/㭢;

    invoke-static {v1}, L㚬/䂻/ბ/㭢;->ბ(L㚬/䂻/ბ/㭢;)V

    :cond_0
    sget-object v1, L㚬/䂻/ბ/㭢;->ㄏ:L㚬/䂻/ბ/㭢;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static 㲝(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    instance-of v0, p0, L㚬/㖪/உ/உ/ℓ;

    if-nez v0, :cond_1

    const-string v0, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static declared-synchronized 㹖(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    const-class v0, L㚬/䂻/ბ/㭢;

    monitor-enter v0

    :try_start_0
    sget-object v1, L㚬/䂻/ბ/㭢;->ಫ:L㚬/䂻/ბ/㭢$㚬;

    invoke-virtual {v1, p0, p1}, L㚬/䂻/ბ/㭢$㚬;->ㄏ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p0, p1, v2}, L㚬/䂻/ბ/㭢$㚬;->ಫ(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final உ(Ljava/lang/String;L㚬/䂻/ბ/㭢$㺴;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㭢;->䂻:L㚬/䆀/உ;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䆀/உ;

    invoke-direct {v0}, L㚬/䆀/உ;-><init>()V

    iput-object v0, p0, L㚬/䂻/ბ/㭢;->䂻:L㚬/䆀/உ;

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/㭢;->䂻:L㚬/䆀/உ;

    invoke-virtual {v0, p1, p2}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized ಫ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, L㚬/䂻/ბ/㭢;->㧦(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ཇ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㭢;->உ:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/䆀/ℓ;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, L㚬/䆀/ℓ;->ḓ(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_0
    return-object v1
.end method

.method public ᓭ(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㭢;->ᆻ:L㚬/䂻/ბ/㭢$ḓ;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, L㚬/䂻/ბ/㭢$ḓ;->ḓ(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public declared-synchronized ḙ(Landroid/content/Context;L㚬/䂻/ბ/ᣦ;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p3}, L㚬/䂻/ბ/㭢;->㞘(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p3}, L㚬/䂻/ბ/ᣦ;->㚬(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2, v0}, L㚬/䂻/ბ/㭢;->㢏(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ἥ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, L㚬/䂻/ბ/㭢;->ཇ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/㭢;->ᆻ:L㚬/䂻/ბ/㭢$ḓ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, L㚬/䂻/ბ/㭢$ḓ;->㚬(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, v0}, L㚬/䂻/ბ/㭢;->㚬(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized ㄏ(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, L㚬/䂻/ბ/㭢;->㺴:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/䆀/㺴;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3}, L㚬/䆀/㺴;->䆀(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    invoke-virtual {v0, p2, p3}, L㚬/䆀/㺴;->㺴(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized 㖪(L㚬/䂻/ბ/㭢$ḓ;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, L㚬/䂻/ბ/㭢;->ᆻ:L㚬/䂻/ბ/㭢$ḓ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final 㚬(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㭢;->உ:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, L㚬/䂻/ბ/㭢;->உ:Ljava/util/WeakHashMap;

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/㭢;->உ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/䆀/ℓ;

    if-nez v0, :cond_1

    new-instance v0, L㚬/䆀/ℓ;

    invoke-direct {v0}, L㚬/䆀/ℓ;-><init>()V

    iget-object v1, p0, L㚬/䂻/ბ/㭢;->உ:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2, p3}, L㚬/䆀/ℓ;->உ(ILjava/lang/Object;)V

    return-void
.end method

.method public final 㞘(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 10

    iget-object v0, p0, L㚬/䂻/ბ/㭢;->䂻:L㚬/䆀/உ;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, L㚬/䆀/ᆻ;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, L㚬/䂻/ბ/㭢;->㚬:L㚬/䆀/ℓ;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, L㚬/䆀/ℓ;->ḓ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_2

    iget-object v3, p0, L㚬/䂻/ბ/㭢;->䂻:L㚬/䆀/உ;

    invoke-virtual {v3, v0}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, L㚬/䆀/ℓ;

    invoke-direct {v0}, L㚬/䆀/ℓ;-><init>()V

    iput-object v0, p0, L㚬/䂻/ბ/㭢;->㚬:L㚬/䆀/ℓ;

    :cond_2
    iget-object v0, p0, L㚬/䂻/ბ/㭢;->ḓ:Landroid/util/TypedValue;

    if-nez v0, :cond_3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, L㚬/䂻/ბ/㭢;->ḓ:Landroid/util/TypedValue;

    :cond_3
    iget-object v0, p0, L㚬/䂻/ბ/㭢;->ḓ:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {v0}, L㚬/䂻/ბ/㭢;->ḓ(Landroid/util/TypedValue;)J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, L㚬/䂻/ბ/㭢;->ㄏ(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    return-object v6

    :cond_4
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    if-eq v8, v3, :cond_5

    goto :goto_0

    :cond_5
    if-ne v8, v9, :cond_7

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, L㚬/䂻/ბ/㭢;->㚬:L㚬/䆀/ℓ;

    invoke-virtual {v8, p2, v3}, L㚬/䆀/ℓ;->உ(ILjava/lang/Object;)V

    iget-object v8, p0, L㚬/䂻/ბ/㭢;->䂻:L㚬/䆀/உ;

    invoke-virtual {v8, v3}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/䂻/ბ/㭢$㺴;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-interface {v3, p1, v1, v7, v8}, L㚬/䂻/ბ/㭢$㺴;->உ(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v6, v1

    :cond_6
    if-eqz v6, :cond_8

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-virtual {p0, p1, v4, v5, v6}, L㚬/䂻/ბ/㭢;->䂻(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "ResourceManagerInternal"

    const-string v1, "Exception while inflating drawable"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_1
    if-nez v6, :cond_9

    iget-object p1, p0, L㚬/䂻/ბ/㭢;->㚬:L㚬/䆀/ℓ;

    invoke-virtual {p1, p2, v2}, L㚬/䆀/ℓ;->உ(ILjava/lang/Object;)V

    :cond_9
    return-object v6

    :cond_a
    return-object v1
.end method

.method public final 㢏(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0, p1, p2}, L㚬/䂻/ბ/㭢;->ἥ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p4}, L㚬/䂻/ბ/㰫;->உ(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    :cond_0
    invoke-static {p4}, L㚬/ℓ/䆀/㹖/உ;->㞘(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {p4, v0}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p2}, L㚬/䂻/ბ/㭢;->ᓭ(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p4, p1}, L㚬/ℓ/䆀/㹖/உ;->ბ(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, L㚬/䂻/ბ/㭢;->ᆻ:L㚬/䂻/ბ/㭢$ḓ;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p4}, L㚬/䂻/ბ/㭢$ḓ;->㺴(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p4}, L㚬/䂻/ბ/㭢;->㲧(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    const/4 p4, 0x0

    :cond_3
    :goto_0
    return-object p4
.end method

.method public declared-synchronized 㧦(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, L㚬/䂻/ბ/㭢;->㺴(Landroid/content/Context;)V

    invoke-virtual {p0, p1, p2}, L㚬/䂻/ბ/㭢;->㞘(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, L㚬/䂻/ბ/㭢;->䆀(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p1, p2}, L㚬/ℓ/ḓ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3, v0}, L㚬/䂻/ბ/㭢;->㢏(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, L㚬/䂻/ბ/㰫;->䂻(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized 㭲(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, L㚬/䂻/ბ/㭢;->㺴:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/䆀/㺴;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, L㚬/䆀/㺴;->䂻()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public 㲧(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㭢;->ᆻ:L㚬/䂻/ბ/㭢$ḓ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, L㚬/䂻/ბ/㭢$ḓ;->䂻(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final 㺴(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ბ/㭢;->䆀:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ბ/㭢;->䆀:Z

    sget v0, L㚬/䂻/ཇ/உ;->உ:I

    invoke-virtual {p0, p1, v0}, L㚬/䂻/ბ/㭢;->ಫ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, L㚬/䂻/ბ/㭢;->㲝(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/䂻/ბ/㭢;->䆀:Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized 䂻(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/㭢;->㺴:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/䆀/㺴;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䆀/㺴;

    invoke-direct {v0}, L㚬/䆀/㺴;-><init>()V

    iget-object v1, p0, L㚬/䂻/ბ/㭢;->㺴:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, L㚬/䆀/㺴;->ಫ(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final 䆀(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, L㚬/䂻/ბ/㭢;->ḓ:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, L㚬/䂻/ბ/㭢;->ḓ:Landroid/util/TypedValue;

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/㭢;->ḓ:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {v0}, L㚬/䂻/ბ/㭢;->ḓ(Landroid/util/TypedValue;)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, L㚬/䂻/ბ/㭢;->ㄏ(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    iget-object v3, p0, L㚬/䂻/ბ/㭢;->ᆻ:L㚬/䂻/ბ/㭢$ḓ;

    if-nez v3, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v3, p0, p1, p2}, L㚬/䂻/ბ/㭢$ḓ;->உ(L㚬/䂻/ბ/㭢;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_3

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-virtual {p0, p1, v1, v2, p2}, L㚬/䂻/ბ/㭢;->䂻(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :cond_3
    return-object p2
.end method
