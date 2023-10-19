.class public L㚬/ბ/ᆻ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ბ/ᆻ$உ;,
        L㚬/ბ/ᆻ$䂻;,
        L㚬/ბ/ᆻ$㚬;
    }
.end annotation


# static fields
.field public static உ:Ljava/lang/reflect/Field;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-class v0, Landroid/service/media/MediaBrowserService$Result;

    const-string v1, "mFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, L㚬/ბ/ᆻ;->உ:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MBSCompatApi26"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static உ(Landroid/content/Context;L㚬/ბ/ᆻ$㚬;)Ljava/lang/Object;
    .locals 1

    new-instance v0, L㚬/ბ/ᆻ$உ;

    invoke-direct {v0, p0, p1}, L㚬/ბ/ᆻ$உ;-><init>(Landroid/content/Context;L㚬/ბ/ᆻ$㚬;)V

    return-object v0
.end method
