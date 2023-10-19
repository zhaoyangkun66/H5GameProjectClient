.class public L㚬/ℓ/㧦/ḓ$䆀;
.super L㚬/ℓ/㧦/ḓ$㺴;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/㧦/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u4180"
.end annotation


# static fields
.field public static final 䂻:L㚬/ℓ/㧦/ḓ$䆀;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, L㚬/ℓ/㧦/ḓ$䆀;

    invoke-direct {v0}, L㚬/ℓ/㧦/ḓ$䆀;-><init>()V

    sput-object v0, L㚬/ℓ/㧦/ḓ$䆀;->䂻:L㚬/ℓ/㧦/ḓ$䆀;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, L㚬/ℓ/㧦/ḓ$㺴;-><init>(L㚬/ℓ/㧦/ḓ$㚬;)V

    return-void
.end method


# virtual methods
.method public 䂻()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, L㚬/ℓ/㧦/䆀;->䂻(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
