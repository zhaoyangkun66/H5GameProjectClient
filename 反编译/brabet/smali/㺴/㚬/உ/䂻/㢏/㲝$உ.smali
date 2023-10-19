.class public L㺴/㚬/உ/䂻/㢏/㲝$உ;
.super L㚬/㲝/㺴/ᆻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㢏/㲝;->䉄(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ಋ;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㢏/㲝;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p2}, L㚬/㲝/㺴/ᆻ;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public 㢏(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method
