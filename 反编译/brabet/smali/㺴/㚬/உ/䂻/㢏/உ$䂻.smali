.class public final L㺴/㚬/உ/䂻/㢏/உ$䂻;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/㢏/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u40bb"
.end annotation


# static fields
.field public static final ḓ:J

.field public static final 䆀:J


# instance fields
.field public உ:J

.field public 㚬:Ljava/lang/Long;

.field public 㺴:L㺴/㚬/உ/䂻/㢏/உ$㚬;

.field public 䂻:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x76c

    const/4 v1, 0x0

    invoke-static {v0, v1}, L㺴/㚬/உ/䂻/㢏/㹖;->㧦(II)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v0

    iget-wide v0, v0, L㺴/㚬/உ/䂻/㢏/㹖;->ℓ:J

    invoke-static {v0, v1}, L㺴/㚬/உ/䂻/㢏/㞘;->உ(J)J

    move-result-wide v0

    sput-wide v0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->ḓ:J

    const/16 v0, 0x834

    const/16 v1, 0xb

    invoke-static {v0, v1}, L㺴/㚬/உ/䂻/㢏/㹖;->㧦(II)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v0

    iget-wide v0, v0, L㺴/㚬/உ/䂻/㢏/㹖;->ℓ:J

    invoke-static {v0, v1}, L㺴/㚬/உ/䂻/㢏/㞘;->உ(J)J

    move-result-wide v0

    sput-wide v0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->䆀:J

    return-void
.end method

.method public constructor <init>(L㺴/㚬/உ/䂻/㢏/உ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->ḓ:J

    iput-wide v0, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->உ:J

    sget-wide v0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->䆀:J

    iput-wide v0, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->䂻:J

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, L㺴/㚬/உ/䂻/㢏/䆀;->ಫ(J)L㺴/㚬/உ/䂻/㢏/䆀;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->㺴:L㺴/㚬/உ/䂻/㢏/உ$㚬;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/உ;->ಫ(L㺴/㚬/உ/䂻/㢏/உ;)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v0

    iget-wide v0, v0, L㺴/㚬/உ/䂻/㢏/㹖;->ℓ:J

    iput-wide v0, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->உ:J

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/உ;->㧦(L㺴/㚬/உ/䂻/㢏/உ;)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v0

    iget-wide v0, v0, L㺴/㚬/உ/䂻/㢏/㹖;->ℓ:J

    iput-wide v0, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->䂻:J

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/உ;->㹖(L㺴/㚬/உ/䂻/㢏/உ;)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v0

    iget-wide v0, v0, L㺴/㚬/உ/䂻/㢏/㹖;->ℓ:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->㚬:Ljava/lang/Long;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/உ;->ἥ(L㺴/㚬/உ/䂻/㢏/உ;)L㺴/㚬/உ/䂻/㢏/உ$㚬;

    move-result-object p1

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->㺴:L㺴/㚬/உ/䂻/㢏/உ$㚬;

    return-void
.end method


# virtual methods
.method public உ()L㺴/㚬/உ/䂻/㢏/உ;
    .locals 9

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->㚬:Ljava/lang/Long;

    if-nez v0, :cond_1

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/ㄏ;->㞘()J

    move-result-wide v0

    iget-wide v2, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->உ:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    iget-wide v4, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->䂻:J

    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->㚬:Ljava/lang/Long;

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->㺴:L㺴/㚬/உ/䂻/㢏/உ$㚬;

    const-string v2, "DEEP_COPY_VALIDATOR_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, L㺴/㚬/உ/䂻/㢏/உ;

    iget-wide v3, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->உ:J

    invoke-static {v3, v4}, L㺴/㚬/உ/䂻/㢏/㹖;->㹖(J)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v4

    iget-wide v5, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->䂻:J

    invoke-static {v5, v6}, L㺴/㚬/உ/䂻/㢏/㹖;->㹖(J)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v5

    iget-object v3, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->㚬:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, L㺴/㚬/உ/䂻/㢏/㹖;->㹖(J)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v6

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, L㺴/㚬/உ/䂻/㢏/உ$㚬;

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, L㺴/㚬/உ/䂻/㢏/உ;-><init>(L㺴/㚬/உ/䂻/㢏/㹖;L㺴/㚬/உ/䂻/㢏/㹖;L㺴/㚬/உ/䂻/㢏/㹖;L㺴/㚬/உ/䂻/㢏/உ$㚬;L㺴/㚬/உ/䂻/㢏/உ$உ;)V

    return-object v1
.end method

.method public 䂻(J)L㺴/㚬/உ/䂻/㢏/உ$䂻;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/உ$䂻;->㚬:Ljava/lang/Long;

    return-object p0
.end method
