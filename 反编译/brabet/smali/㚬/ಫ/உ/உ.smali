.class public abstract L㚬/ಫ/உ/உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u36ac/\u0cab/\u0b89/\u0b89;",
            ">;"
        }
    .end annotation
.end field

.field public static final 㚬:L㚬/ಫ/உ/உ;


# instance fields
.field public final 䂻:Landroid/os/Parcelable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, L㚬/ಫ/உ/உ$உ;

    invoke-direct {v0}, L㚬/ಫ/உ/உ$உ;-><init>()V

    sput-object v0, L㚬/ಫ/உ/உ;->㚬:L㚬/ಫ/உ/உ;

    new-instance v0, L㚬/ಫ/உ/உ$䂻;

    invoke-direct {v0}, L㚬/ಫ/உ/உ$䂻;-><init>()V

    sput-object v0, L㚬/ಫ/உ/உ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/ಫ/உ/உ;->䂻:Landroid/os/Parcelable;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, L㚬/ಫ/உ/உ;->㚬:L㚬/ಫ/உ/உ;

    :goto_0
    iput-object p1, p0, L㚬/ಫ/உ/உ;->䂻:Landroid/os/Parcelable;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    sget-object v0, L㚬/ಫ/உ/உ;->㚬:L㚬/ಫ/உ/உ;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, L㚬/ಫ/உ/உ;->䂻:Landroid/os/Parcelable;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "superState must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(L㚬/ಫ/உ/உ$உ;)V
    .locals 0

    invoke-direct {p0}, L㚬/ಫ/உ/உ;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, L㚬/ಫ/உ/உ;->䂻:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public final ಫ()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, L㚬/ಫ/உ/உ;->䂻:Landroid/os/Parcelable;

    return-object v0
.end method
