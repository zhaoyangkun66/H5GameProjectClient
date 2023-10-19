.class public L㚬/ḙ/㲧;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static உ:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static உ(Landroid/view/ViewGroup;)L㚬/ḙ/ม;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, L㚬/ḙ/㢏;

    invoke-direct {v0, p0}, L㚬/ḙ/㢏;-><init>(Landroid/view/ViewGroup;)V

    return-object v0

    :cond_0
    invoke-static {p0}, L㚬/ḙ/㖪;->ᆻ(Landroid/view/ViewGroup;)L㚬/ḙ/㖪;

    move-result-object p0

    return-object p0
.end method

.method public static 㚬(Landroid/view/ViewGroup;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, L㚬/ḙ/㲧;->䂻(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, L㚬/ḙ/ㄬ;->䂻(Landroid/view/ViewGroup;Z)V

    :goto_0
    return-void
.end method

.method public static 䂻(Landroid/view/ViewGroup;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-boolean v0, L㚬/ḙ/㲧;->உ:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    sput-boolean p0, L㚬/ḙ/㲧;->உ:Z

    :cond_0
    :goto_0
    return-void
.end method
