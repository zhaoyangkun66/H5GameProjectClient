.class public final enum Lḓ/㹖/㰫;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "L\u1e13/\u3e56/\u3c2b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ḓ:Lḓ/㹖/㰫;

.field public static final enum 㚬:Lḓ/㹖/㰫;

.field public static final enum 㺴:Lḓ/㹖/㰫;

.field public static final enum 䂻:Lḓ/㹖/㰫;

.field public static final synthetic 䆀:[Lḓ/㹖/㰫;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lḓ/㹖/㰫;

    new-instance v1, Lḓ/㹖/㰫;

    const-string v2, "Ready"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lḓ/㹖/㰫;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lḓ/㹖/㰫;->䂻:Lḓ/㹖/㰫;

    aput-object v1, v0, v3

    new-instance v1, Lḓ/㹖/㰫;

    const-string v2, "NotReady"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lḓ/㹖/㰫;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lḓ/㹖/㰫;->㚬:Lḓ/㹖/㰫;

    aput-object v1, v0, v3

    new-instance v1, Lḓ/㹖/㰫;

    const-string v2, "Done"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lḓ/㹖/㰫;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lḓ/㹖/㰫;->㺴:Lḓ/㹖/㰫;

    aput-object v1, v0, v3

    new-instance v1, Lḓ/㹖/㰫;

    const-string v2, "Failed"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lḓ/㹖/㰫;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lḓ/㹖/㰫;->ḓ:Lḓ/㹖/㰫;

    aput-object v1, v0, v3

    sput-object v0, Lḓ/㹖/㰫;->䆀:[Lḓ/㹖/㰫;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lḓ/㹖/㰫;
    .locals 1

    const-class v0, Lḓ/㹖/㰫;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lḓ/㹖/㰫;

    return-object p0
.end method

.method public static values()[Lḓ/㹖/㰫;
    .locals 1

    sget-object v0, Lḓ/㹖/㰫;->䆀:[Lḓ/㹖/㰫;

    invoke-virtual {v0}, [Lḓ/㹖/㰫;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lḓ/㹖/㰫;

    return-object v0
.end method
