.class public final Landroidx/media/AudioAttributesImplApi21Parcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(L㚬/㢏/உ;)L㚬/ბ/䂻;
    .locals 3

    new-instance v0, L㚬/ბ/䂻;

    invoke-direct {v0}, L㚬/ბ/䂻;-><init>()V

    iget-object v1, v0, L㚬/ბ/䂻;->உ:Landroid/media/AudioAttributes;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, L㚬/㢏/உ;->㞘(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, v0, L㚬/ბ/䂻;->உ:Landroid/media/AudioAttributes;

    iget v1, v0, L㚬/ბ/䂻;->䂻:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, L㚬/㢏/உ;->ბ(II)I

    move-result p0

    iput p0, v0, L㚬/ბ/䂻;->䂻:I

    return-object v0
.end method

.method public static write(L㚬/ბ/䂻;L㚬/㢏/உ;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, L㚬/㢏/உ;->㲧(ZZ)V

    iget-object v0, p0, L㚬/ბ/䂻;->உ:Landroid/media/AudioAttributes;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, L㚬/㢏/உ;->ᱹ(Landroid/os/Parcelable;I)V

    iget p0, p0, L㚬/ბ/䂻;->䂻:I

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, L㚬/㢏/உ;->㨃(II)V

    return-void
.end method
