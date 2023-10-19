.class public Landroidx/versionedparcelable/ParcelImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final 䂻:L㚬/㢏/㚬;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/versionedparcelable/ParcelImpl$உ;

    invoke-direct {v0}, Landroidx/versionedparcelable/ParcelImpl$உ;-><init>()V

    sput-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, L㚬/㢏/䂻;

    invoke-direct {v0, p1}, L㚬/㢏/䂻;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, L㚬/㢏/உ;->㖪()L㚬/㢏/㚬;

    move-result-object p1

    iput-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->䂻:L㚬/㢏/㚬;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    new-instance p2, L㚬/㢏/䂻;

    invoke-direct {p2, p1}, L㚬/㢏/䂻;-><init>(Landroid/os/Parcel;)V

    iget-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->䂻:L㚬/㢏/㚬;

    invoke-virtual {p2, p1}, L㚬/㢏/உ;->㭢(L㚬/㢏/㚬;)V

    return-void
.end method
