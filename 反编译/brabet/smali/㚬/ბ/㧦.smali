.class public L㚬/ბ/㧦;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ბ/ㄏ;


# instance fields
.field public உ:Ljava/lang/String;

.field public 㚬:I

.field public 䂻:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/ბ/㧦;->உ:Ljava/lang/String;

    iput p2, p0, L㚬/ბ/㧦;->䂻:I

    iput p3, p0, L㚬/ბ/㧦;->㚬:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, L㚬/ბ/㧦;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, L㚬/ბ/㧦;

    iget-object v1, p0, L㚬/ბ/㧦;->உ:Ljava/lang/String;

    iget-object v3, p1, L㚬/ბ/㧦;->உ:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, L㚬/ბ/㧦;->䂻:I

    iget v3, p1, L㚬/ბ/㧦;->䂻:I

    if-ne v1, v3, :cond_2

    iget v1, p0, L㚬/ბ/㧦;->㚬:I

    iget p1, p1, L㚬/ბ/㧦;->㚬:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, L㚬/ბ/㧦;->உ:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, L㚬/ბ/㧦;->䂻:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, L㚬/ბ/㧦;->㚬:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, L㚬/ℓ/㹖/䂻;->䂻([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
