.class public L䂻/உ/䂻/䂻/㚬;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L䂻/உ/䂻/䂻/㚬$உ;
    }
.end annotation


# direct methods
.method public static உ(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static ᆻ(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p0, Landroid/media/MediaDescription;

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static ḓ(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 0

    check-cast p0, Landroid/media/MediaDescription;

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static ℓ(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p0, Landroid/media/MediaDescription;

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static ㄏ(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    check-cast p0, Landroid/media/MediaDescription;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaDescription;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static 㚬(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    check-cast p0, Landroid/media/MediaDescription;

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static 㺴(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    check-cast p0, Landroid/media/MediaDescription;

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static 䂻(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p0, Landroid/media/MediaDescription;

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static 䆀(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p0, Landroid/media/MediaDescription;

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
