.class public L㚬/ḙ/㰫;
.super L㚬/ḙ/㥁;
.source ""


# static fields
.field public static ḓ:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, L㚬/ḙ/㥁;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public 㚬(Landroid/view/View;)F
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-boolean v0, L㚬/ḙ/㰫;->ḓ:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 v0, 0x0

    sput-boolean v0, L㚬/ḙ/㰫;->ḓ:Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    return p1
.end method

.method public 㺴(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public 䆀(Landroid/view/View;F)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-boolean v0, L㚬/ḙ/㰫;->ḓ:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x0

    sput-boolean v0, L㚬/ḙ/㰫;->ḓ:Z

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
