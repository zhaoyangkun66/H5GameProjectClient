.class public final Lcom/facebook/share/model/ShareVideo$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/model/ShareVideo;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/share/model/ShareVideo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareVideo;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/share/model/ShareVideo;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/ShareVideo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareVideo$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareVideo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/share/model/ShareVideo;
    .locals 0

    new-array p1, p1, [Lcom/facebook/share/model/ShareVideo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareVideo$Companion$CREATOR$1;->newArray(I)[Lcom/facebook/share/model/ShareVideo;

    move-result-object p1

    return-object p1
.end method
