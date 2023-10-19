.class public L㚬/ℓ/ಫ/䂻$䆀;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/ಫ/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u4180"
.end annotation


# instance fields
.field public final உ:Landroid/net/Uri;

.field public final ḓ:I

.field public final 㚬:I

.field public final 㺴:Z

.field public final 䂻:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, L㚬/ℓ/㹖/ᆻ;->㚬(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, L㚬/ℓ/ಫ/䂻$䆀;->உ:Landroid/net/Uri;

    iput p2, p0, L㚬/ℓ/ಫ/䂻$䆀;->䂻:I

    iput p3, p0, L㚬/ℓ/ಫ/䂻$䆀;->㚬:I

    iput-boolean p4, p0, L㚬/ℓ/ಫ/䂻$䆀;->㺴:Z

    iput p5, p0, L㚬/ℓ/ಫ/䂻$䆀;->ḓ:I

    return-void
.end method


# virtual methods
.method public உ()I
    .locals 1

    iget v0, p0, L㚬/ℓ/ಫ/䂻$䆀;->ḓ:I

    return v0
.end method

.method public ḓ()Z
    .locals 1

    iget-boolean v0, p0, L㚬/ℓ/ಫ/䂻$䆀;->㺴:Z

    return v0
.end method

.method public 㚬()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ಫ/䂻$䆀;->உ:Landroid/net/Uri;

    return-object v0
.end method

.method public 㺴()I
    .locals 1

    iget v0, p0, L㚬/ℓ/ಫ/䂻$䆀;->㚬:I

    return v0
.end method

.method public 䂻()I
    .locals 1

    iget v0, p0, L㚬/ℓ/ಫ/䂻$䆀;->䂻:I

    return v0
.end method
