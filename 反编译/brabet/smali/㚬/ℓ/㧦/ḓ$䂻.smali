.class public L㚬/ℓ/㧦/ḓ$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ℓ/㧦/ḓ$㚬;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/㧦/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation


# static fields
.field public static final உ:L㚬/ℓ/㧦/ḓ$䂻;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, L㚬/ℓ/㧦/ḓ$䂻;

    invoke-direct {v0}, L㚬/ℓ/㧦/ḓ$䂻;-><init>()V

    sput-object v0, L㚬/ℓ/㧦/ḓ$䂻;->உ:L㚬/ℓ/㧦/ḓ$䂻;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Ljava/lang/CharSequence;II)I
    .locals 2

    add-int/2addr p3, p2

    const/4 v0, 0x2

    const/4 v1, 0x2

    :goto_0
    if-ge p2, p3, :cond_0

    if-ne v1, v0, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    invoke-static {v1}, L㚬/ℓ/㧦/ḓ;->䂻(I)I

    move-result v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
