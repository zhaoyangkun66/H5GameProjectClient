.class public L㺴/㚬/உ/䂻/㢏/㞘;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static உ(J)J
    .locals 1

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㞘;->㧦()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v0}, L㺴/㚬/உ/䂻/㢏/㞘;->㺴(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static ಫ()Landroid/icu/util/TimeZone;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const-string v0, "UTC"

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static ཇ()Ljava/text/SimpleDateFormat;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, L㺴/㚬/உ/䂻/㢏/㞘;->ᓭ(Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static ᆻ(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
    .locals 1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㞘;->ℓ()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static ᓭ(Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
    .locals 1

    const-string v0, "MMMM, yyyy"

    invoke-static {v0, p0}, L㺴/㚬/உ/䂻/㢏/㞘;->ᆻ(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static ḓ(ILjava/util/Locale;)Ljava/text/DateFormat;
    .locals 0

    invoke-static {p0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㞘;->ℓ()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p0
.end method

.method public static ἥ(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const-string v0, "yMMMEd"

    invoke-static {v0, p0}, L㺴/㚬/உ/䂻/㢏/㞘;->㚬(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static ℓ()Ljava/util/TimeZone;
    .locals 1

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static ㄏ()Ljava/util/Calendar;
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, L㺴/㚬/உ/䂻/㢏/㞘;->㺴(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static 㚬(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㞘;->ಫ()Landroid/icu/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    return-object p0
.end method

.method public static 㧦()Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, L㺴/㚬/உ/䂻/㢏/㞘;->㹖(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static 㹖(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㞘;->ℓ()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :goto_0
    return-object v0
.end method

.method public static 㺴(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 4

    invoke-static {p0}, L㺴/㚬/உ/䂻/㢏/㞘;->㹖(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㞘;->㧦()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/Calendar;->set(III)V

    return-object v0
.end method

.method public static 䂻(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const-string v0, "MMMEd"

    invoke-static {v0, p0}, L㺴/㚬/உ/䂻/㢏/㞘;->㚬(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static 䆀(Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, L㺴/㚬/உ/䂻/㢏/㞘;->ḓ(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method
