.class public final L㺴/㚬/உ/䂻/㢏/㹖;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u3e56;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u3e56;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ᆻ:I

.field public final ḓ:I

.field public final ℓ:J

.field public final 㚬:Ljava/lang/String;

.field public final 㺴:I

.field public final 䂻:Ljava/util/Calendar;

.field public final 䆀:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, L㺴/㚬/உ/䂻/㢏/㹖$உ;

    invoke-direct {v0}, L㺴/㚬/உ/䂻/㢏/㹖$உ;-><init>()V

    sput-object v0, L㺴/㚬/உ/䂻/㢏/㹖;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/㞘;->㺴(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/㹖;->䂻:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, L㺴/㚬/உ/䂻/㢏/㹖;->㺴:I

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, L㺴/㚬/உ/䂻/㢏/㹖;->ḓ:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    iput v1, p0, L㺴/㚬/உ/䂻/㢏/㹖;->䆀:I

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/㢏/㹖;->ᆻ:I

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㞘;->ཇ()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/㹖;->㚬:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, L㺴/㚬/உ/䂻/㢏/㹖;->ℓ:J

    return-void
.end method

.method public static 㧦(II)L㺴/㚬/உ/䂻/㢏/㹖;
    .locals 2

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㞘;->㧦()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    new-instance p0, L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-direct {p0, v0}, L㺴/㚬/உ/䂻/㢏/㹖;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method public static 㭲()L㺴/㚬/உ/䂻/㢏/㹖;
    .locals 2

    new-instance v0, L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㞘;->ㄏ()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, L㺴/㚬/உ/䂻/㢏/㹖;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static 㹖(J)L㺴/㚬/உ/䂻/㢏/㹖;
    .locals 1

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㞘;->㧦()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance p0, L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-direct {p0, v0}, L㺴/㚬/உ/䂻/㢏/㹖;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/㹖;->ಫ(L㺴/㚬/உ/䂻/㢏/㹖;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, L㺴/㚬/உ/䂻/㢏/㹖;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, L㺴/㚬/உ/䂻/㢏/㹖;

    iget v1, p0, L㺴/㚬/உ/䂻/㢏/㹖;->㺴:I

    iget v3, p1, L㺴/㚬/உ/䂻/㢏/㹖;->㺴:I

    if-ne v1, v3, :cond_2

    iget v1, p0, L㺴/㚬/உ/䂻/㢏/㹖;->ḓ:I

    iget p1, p1, L㺴/㚬/உ/䂻/㢏/㹖;->ḓ:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, L㺴/㚬/உ/䂻/㢏/㹖;->㺴:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, L㺴/㚬/உ/䂻/㢏/㹖;->ḓ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, L㺴/㚬/உ/䂻/㢏/㹖;->ḓ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, L㺴/㚬/உ/䂻/㢏/㹖;->㺴:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public ಫ(L㺴/㚬/உ/䂻/㢏/㹖;)I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㹖;->䂻:Ljava/util/Calendar;

    iget-object p1, p1, L㺴/㚬/உ/䂻/㢏/㹖;->䂻:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    return p1
.end method

.method public ཇ(I)J
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㹖;->䂻:Ljava/util/Calendar;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㢏/㞘;->㺴(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public ბ()J
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㹖;->䂻:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public ᓭ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㹖;->㚬:Ljava/lang/String;

    return-object v0
.end method

.method public ἥ()I
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㹖;->䂻:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/㹖;->䂻:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    iget v1, p0, L㺴/㚬/உ/䂻/㢏/㹖;->䆀:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public 㞘(L㺴/㚬/உ/䂻/㢏/㹖;)I
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㹖;->䂻:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    iget v0, p1, L㺴/㚬/உ/䂻/㢏/㹖;->ḓ:I

    iget v1, p0, L㺴/㚬/உ/䂻/㢏/㹖;->ḓ:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget p1, p1, L㺴/㚬/உ/䂻/㢏/㹖;->㺴:I

    iget v1, p0, L㺴/㚬/உ/䂻/㢏/㹖;->㺴:I

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only Gregorian calendars are supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 㲝(I)L㺴/㚬/உ/䂻/㢏/㹖;
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㹖;->䂻:Ljava/util/Calendar;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㢏/㞘;->㺴(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    new-instance p1, L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-direct {p1, v0}, L㺴/㚬/உ/䂻/㢏/㹖;-><init>(Ljava/util/Calendar;)V

    return-object p1
.end method
