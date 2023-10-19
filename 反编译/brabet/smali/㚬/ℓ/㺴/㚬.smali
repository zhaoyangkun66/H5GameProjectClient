.class public final L㚬/ℓ/㺴/㚬;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ℓ/㺴/㚬$㺴;
    }
.end annotation


# static fields
.field public static final உ:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final ᆻ:Landroid/os/Handler;

.field public static final ḓ:Ljava/lang/reflect/Method;

.field public static final 㚬:Ljava/lang/reflect/Field;

.field public static final 㺴:Ljava/lang/reflect/Method;

.field public static final 䂻:Ljava/lang/reflect/Field;

.field public static final 䆀:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, L㚬/ℓ/㺴/㚬;->ᆻ:Landroid/os/Handler;

    invoke-static {}, L㚬/ℓ/㺴/㚬;->உ()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, L㚬/ℓ/㺴/㚬;->உ:Ljava/lang/Class;

    invoke-static {}, L㚬/ℓ/㺴/㚬;->䂻()Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, L㚬/ℓ/㺴/㚬;->䂻:Ljava/lang/reflect/Field;

    invoke-static {}, L㚬/ℓ/㺴/㚬;->䆀()Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, L㚬/ℓ/㺴/㚬;->㚬:Ljava/lang/reflect/Field;

    invoke-static {v0}, L㚬/ℓ/㺴/㚬;->㺴(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, L㚬/ℓ/㺴/㚬;->㺴:Ljava/lang/reflect/Method;

    invoke-static {v0}, L㚬/ℓ/㺴/㚬;->㚬(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, L㚬/ℓ/㺴/㚬;->ḓ:Ljava/lang/reflect/Method;

    invoke-static {v0}, L㚬/ℓ/㺴/㚬;->ḓ(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, L㚬/ℓ/㺴/㚬;->䆀:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static உ()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static ᆻ()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static ḓ(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-static {}, L㚬/ℓ/㺴/㚬;->ᆻ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "requestRelaunchActivity"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    const-class v3, Ljava/util/List;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-class v5, Ljava/util/List;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-class v6, Landroid/content/res/Configuration;

    aput-object v6, v2, v3

    const/4 v3, 0x6

    const-class v6, Landroid/content/res/Configuration;

    aput-object v6, v2, v3

    const/4 v3, 0x7

    aput-object v5, v2, v3

    const/16 v3, 0x8

    aput-object v5, v2, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static ℓ(Ljava/lang/Object;ILandroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, L㚬/ℓ/㺴/㚬;->㚬:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p0

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, L㚬/ℓ/㺴/㚬;->䂻:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, L㚬/ℓ/㺴/㚬;->ᆻ:Landroid/os/Handler;

    new-instance p2, L㚬/ℓ/㺴/㚬$㚬;

    invoke-direct {p2, p0, v1}, L㚬/ℓ/㺴/㚬$㚬;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0

    :catchall_0
    move-exception p0

    const-string p1, "ActivityRecreator"

    const-string p2, "Exception while fetching field values"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static ㄏ(Landroid/app/Activity;)Z
    .locals 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return v1

    :cond_0
    invoke-static {}, L㚬/ℓ/㺴/㚬;->ᆻ()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, L㚬/ℓ/㺴/㚬;->䆀:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    return v2

    :cond_1
    sget-object v0, L㚬/ℓ/㺴/㚬;->ḓ:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    sget-object v0, L㚬/ℓ/㺴/㚬;->㺴:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    return v2

    :cond_2
    :try_start_0
    sget-object v0, L㚬/ℓ/㺴/㚬;->㚬:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    sget-object v3, L㚬/ℓ/㺴/㚬;->䂻:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    new-instance v5, L㚬/ℓ/㺴/㚬$㺴;

    invoke-direct {v5, p0}, L㚬/ℓ/㺴/㚬$㺴;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v6, L㚬/ℓ/㺴/㚬;->ᆻ:Landroid/os/Handler;

    new-instance v7, L㚬/ℓ/㺴/㚬$உ;

    invoke-direct {v7, v5, v0}, L㚬/ℓ/㺴/㚬$உ;-><init>(L㚬/ℓ/㺴/㚬$㺴;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, L㚬/ℓ/㺴/㚬;->ᆻ()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object p0, L㚬/ℓ/㺴/㚬;->䆀:Ljava/lang/reflect/Method;

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    const/4 v0, 0x0

    aput-object v0, v7, v1

    const/4 v8, 0x2

    aput-object v0, v7, v8

    const/4 v8, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v0, v7, v8

    const/4 v8, 0x6

    aput-object v0, v7, v8

    const/4 v0, 0x7

    aput-object v9, v7, v0

    const/16 v0, 0x8

    aput-object v9, v7, v0

    invoke-virtual {p0, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    new-instance p0, L㚬/ℓ/㺴/㚬$䂻;

    invoke-direct {p0, v4, v5}, L㚬/ℓ/㺴/㚬$䂻;-><init>(Landroid/app/Application;L㚬/ℓ/㺴/㚬$㺴;)V

    invoke-virtual {v6, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :catchall_0
    move-exception p0

    sget-object v0, L㚬/ℓ/㺴/㚬;->ᆻ:Landroid/os/Handler;

    new-instance v1, L㚬/ℓ/㺴/㚬$䂻;

    invoke-direct {v1, v4, v5}, L㚬/ℓ/㺴/㚬$䂻;-><init>(Landroid/app/Application;L㚬/ℓ/㺴/㚬$㺴;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return v2
.end method

.method public static 㚬(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "performStopActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method public static 㺴(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "performStopActivity"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method public static 䂻()Ljava/lang/reflect/Field;
    .locals 2

    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mMainThread"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static 䆀()Ljava/lang/reflect/Field;
    .locals 2

    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mToken"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method
