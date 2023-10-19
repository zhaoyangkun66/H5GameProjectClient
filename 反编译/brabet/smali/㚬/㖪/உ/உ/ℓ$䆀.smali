.class public abstract L㚬/㖪/உ/உ/ℓ$䆀;
.super L㚬/㖪/உ/உ/ℓ$ḓ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㖪/உ/உ/ℓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u4180"
.end annotation


# instance fields
.field public உ:[L㚬/ℓ/䆀/㚬$䂻;

.field public 㚬:I

.field public 㺴:I

.field public 䂻:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, L㚬/㖪/உ/உ/ℓ$ḓ;-><init>(L㚬/㖪/உ/உ/ℓ$உ;)V

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$䆀;->உ:[L㚬/ℓ/䆀/㚬$䂻;

    const/4 v0, 0x0

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$䆀;->㚬:I

    return-void
.end method

.method public constructor <init>(L㚬/㖪/உ/உ/ℓ$䆀;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, L㚬/㖪/உ/உ/ℓ$ḓ;-><init>(L㚬/㖪/உ/உ/ℓ$உ;)V

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$䆀;->உ:[L㚬/ℓ/䆀/㚬$䂻;

    const/4 v0, 0x0

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$䆀;->㚬:I

    iget-object v0, p1, L㚬/㖪/உ/உ/ℓ$䆀;->䂻:Ljava/lang/String;

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$䆀;->䂻:Ljava/lang/String;

    iget v0, p1, L㚬/㖪/உ/உ/ℓ$䆀;->㺴:I

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$䆀;->㺴:I

    iget-object p1, p1, L㚬/㖪/உ/உ/ℓ$䆀;->உ:[L㚬/ℓ/䆀/㚬$䂻;

    invoke-static {p1}, L㚬/ℓ/䆀/㚬;->䆀([L㚬/ℓ/䆀/㚬$䂻;)[L㚬/ℓ/䆀/㚬$䂻;

    move-result-object p1

    iput-object p1, p0, L㚬/㖪/உ/உ/ℓ$䆀;->உ:[L㚬/ℓ/䆀/㚬$䂻;

    return-void
.end method


# virtual methods
.method public getPathData()[L㚬/ℓ/䆀/㚬$䂻;
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$䆀;->உ:[L㚬/ℓ/䆀/㚬$䂻;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$䆀;->䂻:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([L㚬/ℓ/䆀/㚬$䂻;)V
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$䆀;->உ:[L㚬/ℓ/䆀/㚬$䂻;

    invoke-static {v0, p1}, L㚬/ℓ/䆀/㚬;->䂻([L㚬/ℓ/䆀/㚬$䂻;[L㚬/ℓ/䆀/㚬$䂻;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, L㚬/ℓ/䆀/㚬;->䆀([L㚬/ℓ/䆀/㚬$䂻;)[L㚬/ℓ/䆀/㚬$䂻;

    move-result-object p1

    iput-object p1, p0, L㚬/㖪/உ/உ/ℓ$䆀;->உ:[L㚬/ℓ/䆀/㚬$䂻;

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$䆀;->உ:[L㚬/ℓ/䆀/㚬$䂻;

    invoke-static {v0, p1}, L㚬/ℓ/䆀/㚬;->ಫ([L㚬/ℓ/䆀/㚬$䂻;[L㚬/ℓ/䆀/㚬$䂻;)V

    :goto_0
    return-void
.end method

.method public 㚬()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 㺴(Landroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$䆀;->உ:[L㚬/ℓ/䆀/㚬$䂻;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, L㚬/ℓ/䆀/㚬$䂻;->ḓ([L㚬/ℓ/䆀/㚬$䂻;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method
