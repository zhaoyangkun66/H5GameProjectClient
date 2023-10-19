.class public Landroidx/core/app/RemoteActionCompatParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(L㚬/㢏/உ;)Landroidx/core/app/RemoteActionCompat;
    .locals 3

    new-instance v0, Landroidx/core/app/RemoteActionCompat;

    invoke-direct {v0}, Landroidx/core/app/RemoteActionCompat;-><init>()V

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->உ:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, L㚬/㢏/உ;->㢏(L㚬/㢏/㚬;I)L㚬/㢏/㚬;

    move-result-object v1

    check-cast v1, Landroidx/core/graphics/drawable/IconCompat;

    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->உ:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->䂻:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, L㚬/㢏/உ;->㹖(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->䂻:Ljava/lang/CharSequence;

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->㚬:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, L㚬/㢏/உ;->㹖(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->㚬:Ljava/lang/CharSequence;

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->㺴:Landroid/app/PendingIntent;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, L㚬/㢏/உ;->㞘(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->㺴:Landroid/app/PendingIntent;

    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->ḓ:Z

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, L㚬/㢏/உ;->ℓ(ZI)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->ḓ:Z

    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->䆀:Z

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, L㚬/㢏/உ;->ℓ(ZI)Z

    move-result p0

    iput-boolean p0, v0, Landroidx/core/app/RemoteActionCompat;->䆀:Z

    return-object v0
.end method

.method public static write(Landroidx/core/app/RemoteActionCompat;L㚬/㢏/உ;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, L㚬/㢏/உ;->㲧(ZZ)V

    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->உ:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, L㚬/㢏/உ;->Խ(L㚬/㢏/㚬;I)V

    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->䂻:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, L㚬/㢏/உ;->㰫(Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->㚬:Ljava/lang/CharSequence;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, L㚬/㢏/உ;->㰫(Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->㺴:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, L㚬/㢏/உ;->ᱹ(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroidx/core/app/RemoteActionCompat;->ḓ:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, L㚬/㢏/உ;->㫏(ZI)V

    iget-boolean p0, p0, Landroidx/core/app/RemoteActionCompat;->䆀:Z

    const/4 v0, 0x6

    invoke-virtual {p1, p0, v0}, L㚬/㢏/உ;->㫏(ZI)V

    return-void
.end method
