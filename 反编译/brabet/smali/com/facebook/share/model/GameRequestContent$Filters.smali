.class public final enum Lcom/facebook/share/model/GameRequestContent$Filters;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/GameRequestContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/model/GameRequestContent$Filters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/model/GameRequestContent$Filters;

.field public static final enum APP_NON_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

.field public static final enum APP_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

.field public static final enum EVERYBODY:Lcom/facebook/share/model/GameRequestContent$Filters;


# direct methods
.method private static final synthetic $values()[Lcom/facebook/share/model/GameRequestContent$Filters;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/share/model/GameRequestContent$Filters;

    sget-object v1, Lcom/facebook/share/model/GameRequestContent$Filters;->APP_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/share/model/GameRequestContent$Filters;->APP_NON_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/share/model/GameRequestContent$Filters;->EVERYBODY:Lcom/facebook/share/model/GameRequestContent$Filters;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/facebook/share/model/GameRequestContent$Filters;

    const-string v1, "APP_USERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/model/GameRequestContent$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$Filters;->APP_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

    new-instance v0, Lcom/facebook/share/model/GameRequestContent$Filters;

    const-string v1, "APP_NON_USERS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/model/GameRequestContent$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$Filters;->APP_NON_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

    new-instance v0, Lcom/facebook/share/model/GameRequestContent$Filters;

    const-string v1, "EVERYBODY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/model/GameRequestContent$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$Filters;->EVERYBODY:Lcom/facebook/share/model/GameRequestContent$Filters;

    invoke-static {}, Lcom/facebook/share/model/GameRequestContent$Filters;->$values()[Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object v0

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$Filters;->$VALUES:[Lcom/facebook/share/model/GameRequestContent$Filters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Filters;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/share/model/GameRequestContent$Filters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/model/GameRequestContent$Filters;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/model/GameRequestContent$Filters;
    .locals 2

    sget-object v0, Lcom/facebook/share/model/GameRequestContent$Filters;->$VALUES:[Lcom/facebook/share/model/GameRequestContent$Filters;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/GameRequestContent$Filters;

    return-object v0
.end method
