.class public L㚬/䂻/ბ/㭢$㚬;
.super L㚬/䆀/ḓ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/㭢;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u36ac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u36ac/\u4180/\u1e13<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/PorterDuffColorFilter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, L㚬/䆀/ḓ;-><init>(I)V

    return-void
.end method

.method public static ℓ(ILandroid/graphics/PorterDuff$Mode;)I
    .locals 1

    const/16 v0, 0x1f

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public ಫ(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    invoke-static {p1, p2}, L㚬/䂻/ბ/㭢$㚬;->ℓ(ILandroid/graphics/PorterDuff$Mode;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, L㚬/䆀/ḓ;->㺴(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PorterDuffColorFilter;

    return-object p1
.end method

.method public ㄏ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    invoke-static {p1, p2}, L㚬/䂻/ბ/㭢$㚬;->ℓ(ILandroid/graphics/PorterDuff$Mode;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/䆀/ḓ;->㚬(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PorterDuffColorFilter;

    return-object p1
.end method
